#include "protheus.ch"

/*
Programa : STTZZ1.PRW
Autor    : Henrique Rodrigues Mazza do Valle
Data     : 08/2026

Rotina de manutenção da tabela ZZ1.
*/

User Function STTZZ1()

    Local cAlias   := "ZZ1"
    Local aCores   := {}
    Local aRotAdic := {}

    // Rotinas utilizadas pelo mBrowse
    Private aRotina := {}

    BEGIN SEQUENCE

        // Define as legendas do browse
        aCores := { ;
            { "ZZ1_VALCER < dDataBase", "BR_VERMELHO" }, ;
            { "ZZ1_VALCER <= dDataBase + 30", "BR_AMARELO" }, ;
            { "!Empty(ZZ1_VALCER)", "BR_VERDE" } ;
        }

        // Define as operações disponíveis no mBrowse
        // A inclusão e alteração utilizam as validações da ZZ1
        aRotina := { ;
            { "Pesquisar",  "AxPesqui",    0, 1 }, ;
            { "Visualizar", "AxVisual",    0, 2 }, ;
            { "Incluir",    "U_IncluiZZ1", 0, 3 }, ;
            { "Alterar",    "U_AlteraZZ1", 0, 4 }, ;
            { "Excluir",    "AxDeleta",    0, 5 } ;
        }

        // Botão para visualizar as ocorrências do controle selecionado
        aAdd(aRotAdic, ;
            { "Ocorrências", "U_STTZZ2FLT(ZZ1->ZZ1_CODIGO)", 0, 2 } )

        // Abre o mBrowse da tabela ZZ1
        mBrowse(6,1,22,75,cAlias,,,,,aCores,,aRotAdic)

    RECOVER USING oError

        // Registra o erro em log e informa o usuário
        U_GravarLogTCC("STTZZ1",oError)
        MsgStop("Erro ao executar a rotina.","Atenção")

    END SEQUENCE

Return NIL


/*
Programa : STTZZ1.PRW
Função   : IncluiZZ1
Objetivo : Realizar a inclusão de registros da ZZ1
           utilizando as validações da função ValidacoesZZ1.
*/

User Function IncluiZZ1(cAlias,nReg,nOpc)

    Local cTudoOk := "U_ValidacoesZZ1()"

    // Executa a inclusão utilizando a validação antes da gravação
    AxInclui(cAlias,nReg,nOpc,,,,cTudoOk)

Return NIL


/*
Programa : STTZZ1.PRW
Função   : AlteraZZ1
Objetivo : Realizar a alteração de registros da ZZ1
           utilizando as validações da função ValidacoesZZ1.
*/

User Function AlteraZZ1(cAlias,nReg,nOpc)

    Local cTudoOk := "U_ValidacoesZZ1()"

    // Executa a alteração utilizando a validação antes da gravação
    AxAltera(cAlias,nReg,nOpc,,,,cTudoOk)

Return NIL


/*
Função : ValidacoesZZ1
Objetivo: Validar os dados da tabela ZZ1 antes da gravação.
*/

User Function ValidacoesZZ1()

    Local lRet := .T.

    BEGIN SEQUENCE

        // Validação 1: O fornecedor deve existir na tabela SA2
        If !Empty(M->ZZ1_FORNEC)

            If !ExistCpo("SA2", ;
                xFilial("SA2") + M->ZZ1_FORNEC + M->ZZ1_LOJAFO, 1)

                MsgStop( ;
                    "O fornecedor informado não está cadastrado na SA2.", ;
                    "Validação" )

                lRet := .F.
                Break

            EndIf

        EndIf


        // Validação 2: A validade do certificado não pode ser anterior à data atual
        If INCLUI .And. !Empty(M->ZZ1_VALCER)

            If M->ZZ1_VALCER < dDataBase

                MsgStop( ;
                    "A validade do certificado não pode ser anterior à data atual.", ;
                    "Validação" )

                lRet := .F.
                Break

            EndIf

        EndIf


        // Validação 3: A tolerância deve estar entre 0 e 100
        If M->ZZ1_TOLERA < 0 .Or. M->ZZ1_TOLERA > 100

            MsgStop( ;
                "A tolerância deve estar entre 0 e 100.", ;
                "Validação" )

            lRet := .F.
            Break

        EndIf


    RECOVER

        lRet := .F.

    END SEQUENCE

Return lRet