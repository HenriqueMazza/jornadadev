FUNCTION main()

    LOCAL nSecreto := HB_RandomInt(1, 100)
    LOCAL nI := 0
    LOCAL cInput := ""
    LOCAL nPalpite := 0
    LOCAL lAcertou := .F.

    QOut("Eu mentalizei um numero entre 1 e 100.")
    QOut("Voce tem 7 tentativas para acertar!")
    QOut("")

    FOR nI := 1 TO 7
        nPalpite := 0

        WHILE nPalpite < 1 .OR. nPalpite > 100
            ACCEPT "Tentativa " + AllTrim(STR(nI)) + " de 7. Digite seu palpite: " TO cInput
            cInput := AllTrim(cInput)
            nPalpite := VAL(cInput)

            IF nPalpite < 1 .OR. nPalpite > 100
                QOut("Erro: Digite um numero valido entre 1 e 100!")
                QOut("")
            ENDIF
        ENDDO

        IF nPalpite == nSecreto
            lAcertou := .T.
            EXIT
        ELSEIF nPalpite < nSecreto
            QOut("O numero secreto e MAIOR do que " + AllTrim(STR(nPalpite)) + ".")
            QOut("")
        ELSE
            QOut("O numero secreto e MENOR do que " + AllTrim(STR(nPalpite)) + ".")
            QOut("")
        ENDIF
    NEXT

    QOut("==========================================")
    IF lAcertou
        QOut("Parabens! Voce acertou o numero: " + AllTrim(STR(nSecreto)))
    ELSE
        QOut("FIM DE JOGO! Suas tentativas acabaram.")
        QOut("O numero secreto era: " + AllTrim(STR(nSecreto)))
    ENDIF
    QOut("==========================================")
    QOut("")

RETURN NIL