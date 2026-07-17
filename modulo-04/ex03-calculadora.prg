FUNCTION main()

    LOCAL nOpcao   := 0
    LOCAL nNum1    := 0
    LOCAL nNum2    := 0
    LOCAL cNum1Raw := ""
    LOCAL cNum2Raw := ""

    QOut("================")
    QOut("  CALCULADORA  ")
    QOut("================")
QOut("")
    QOut("1 - Soma")
    QOut("2 - Subtracao")
    QOut("3 - Multiplicacao")
    QOut("4 - Divisao")
    ACCEPT "Escolha uma opcao: (1,2,3,4) " TO nOpcao
    nOpcao := VAL(nOpcao)

    IF nOpcao >= 1 .AND. nOpcao <= 4
        ACCEPT "Digite o primeiro numero: " TO cNum1Raw
        ACCEPT "Digite o segundo numero: "  TO cNum2Raw
        

        nNum1 := VAL(cNum1Raw)
        nNum2 := VAL(cNum2Raw)
    ENDIF


    DO CASE
        CASE nOpcao == 1
            QOut("Resultado: ", AllTrim(STR(nNum1 + nNum2)))

        CASE nOpcao == 2
            QOut("Resultado: ", AllTrim(STR(nNum1 - nNum2)))

        CASE nOpcao == 3
            QOut("Resultado: ", AllTrim(STR(nNum1 * nNum2)))

        CASE nOpcao == 4
            IF nNum2 == 0
                QOut("Erro: Divisao por zero nao permitida.")
            ELSE
                QOut("Resultado: ", AllTrim(STR(nNum1 / nNum2)))
            ENDIF

        OTHERWISE
            QOut("Operacao invalida")
    ENDCASE

    RETURN NIL