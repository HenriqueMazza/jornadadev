#Include "protheus.ch"

/*
    Programa : STTZZ2.PRW
    Autor    : Henrique Rodrigues Mazza do Valle
    Data     : 08/2026

    Rotina de manutenção da tabela ZZ2.
*/

User Function STTZZ2()

    Local cAlias    := "ZZ2"
    Local aCores    := {}

    BEGIN SEQUENCE

        // Legendas do browse
        aCores := { ;
            { "U_PercNaoConforme(ZZ2_QTDOK,ZZ2_QTDNOK) > ZZ1->ZZ1_TOLERA", "BR_VERMELHO" }, ;
            { "U_PercNaoConforme(ZZ2_QTDOK,ZZ2_QTDNOK) <= ZZ1->ZZ1_TOLERA", "BR_VERDE" } ;
        }

        mBrowse(6,1,22,75,cAlias,,,,,aCores)

    RECOVER USING oError

        U_GravarLogTCC("STTZZ2",oError)
        MsgStop("Erro ao executar a rotina.","Atenção")

    END SEQUENCE

Return NIL

/*-------------------------------------------------------------------*/
/* Exibe somente as ocorrências do controle selecionado */
/*-------------------------------------------------------------------*/

User Function STTZZ2FLT(cCodigoZZ1)

    Local aIndexZZ2 := {}
    Local cFiltro   := ""

    Default cCodigoZZ1 := ""

    BEGIN SEQUENCE

        If !Empty(cCodigoZZ1)

            // Filtra apenas as ocorrências do controle selecionado
            cFiltro := "ZZ2_CONFOR == '" + cCodigoZZ1 + "'"

            FilBrowse("ZZ2",@aIndexZZ2,@cFiltro)

            mBrowse(6,1,22,75,"ZZ2")

            EndFilBrw("ZZ2",aIndexZZ2)

        Else

            MsgAlert("Nenhum controle foi informado.","Aviso")

        EndIf

    RECOVER USING oError

        U_GravarLogTCC("STTZZ2FLT",oError)
        MsgStop("Erro ao aplicar o filtro.","Atenção")

    END SEQUENCE

Return NIL