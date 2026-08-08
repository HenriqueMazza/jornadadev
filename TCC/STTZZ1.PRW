#include "protheus.ch"

/*
Programa : STTZZ1.PRW
Autor    : Henrique Rodrigues Mazza do Valle
Data     : 08/2026

Rotina de manuten��o da tabela ZZ1.
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

        // Define as opera��es dispon�veis no mBrowse
        // A inclus�o e altera��o utilizam as valida��es da ZZ1
        aRotina := { ;
            { "Pesquisar",  "AxPesqui",    0, 1 }, ;
            { "Visualizar", "AxVisual",    0, 2 }, ;
            { "Incluir",    "U_IncluiZZ1", 0, 3 }, ;
            { "Alterar",    "U_AlteraZZ1", 0, 4 }, ;
            { "Excluir",    "AxDeleta",    0, 5 } ;
        }

        // Bot�o para visualizar as ocorr�ncias do controle selecionado
        aAdd(aRotAdic, ;
            { "Ocorr�ncias", "U_STTZZ2FLT(ZZ1->ZZ1_CODIGO)", 0, 2 } )

        // Abre o mBrowse da tabela ZZ1
        mBrowse(6,1,22,75,cAlias,,,,,aCores,,aRotAdic)

    RECOVER USING oError

        // Registra o erro em log e informa o usu�rio
        U_GravarLogTCC("STTZZ1",oError)
        MsgStop("Erro ao executar a rotina.","Aten��o")

    END SEQUENCE

Return NIL


/*
Programa : STTZZ1.PRW
Fun��o   : IncluiZZ1
Objetivo : Realizar a inclus�o de registros da ZZ1
           utilizando as valida��es da fun��o ValidacoesZZ1.
*/

User Function IncluiZZ1(cAlias,nReg,nOpc)

    Local cTudoOk := "U_ValidacoesZZ1()"

    // Executa a inclus�o utilizando a valida��o antes da grava��o
    AxInclui(cAlias,nReg,nOpc,,,,cTudoOk)

Return NIL


/*
Programa : STTZZ1.PRW
Fun��o   : AlteraZZ1
Objetivo : Realizar a altera��o de registros da ZZ1
           utilizando as valida��es da fun��o ValidacoesZZ1.
*/

User Function AlteraZZ1(cAlias,nReg,nOpc)

    Local cTudoOk := "U_ValidacoesZZ1()"

    // Executa a altera��o utilizando a valida��o antes da grava��o
    AxAltera(cAlias,nReg,nOpc,,,,cTudoOk)

Return NIL


/*
Fun��o : ValidacoesZZ1
Objetivo: Validar os dados da tabela ZZ1 antes da grava��o.
*/

User Function ValidacoesZZ1()

    Local lRet := .T.

    BEGIN SEQUENCE

        // Valida��o 1: O fornecedor deve existir na tabela SA2
        If !Empty(M->ZZ1_FORNEC)

            If !ExistCpo("SA2", ;
                xFilial("SA2") + M->ZZ1_FORNEC + M->ZZ1_LOJAFO, 1)

                MsgStop( ;
                    "O fornecedor informado n�o est� cadastrado na SA2.", ;
                    "Valida��o" )

                lRet := .F.
                Break

            EndIf

        EndIf


        // Valida��o 2: A validade do certificado n�o pode ser anterior � data atual
        If INCLUI .And. !Empty(M->ZZ1_VALCER)

            If M->ZZ1_VALCER < dDataBase

                MsgStop( ;
                    "A validade do certificado n�o pode ser anterior � data atual.", ;
                    "Valida��o" )

                lRet := .F.
                Break

            EndIf

        EndIf


        // Valida��o 3: A toler�ncia deve estar entre 0 e 100
        If M->ZZ1_TOLERA < 0 .Or. M->ZZ1_TOLERA > 100

            MsgStop( ;
                "A toler�ncia deve estar entre 0 e 100.", ;
                "Valida��o" )

            lRet := .F.
            Break

        EndIf


    RECOVER

        lRet := .F.

    END SEQUENCE

Return lRet