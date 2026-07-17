FUNCTION main()

    LOCAL nIdade := 0
    LOCAL nDependentes := 0
    LOCAL nValorBase := 0
    LOCAL nValorTotal := 0

    ACCEPT "Digite a idade do titular: " TO nIdade
    ACCEPT "Digite o numero de dependentes: " TO nDependentes

    nIdade := VAL(nIdade)
    nDependentes := VAL(nDependentes)

    IF nIdade <= 25
        nValorBase := 180
    ELSEIF nIdade >= 26 .AND. nIdade <= 40
        nValorBase := 260
    ELSEIF nIdade >= 41 .AND. nIdade <= 60
        nValorBase := 380
    ELSE
        nValorBase := 520
    ENDIF

    nValorTotal := nValorBase + (nDependentes * 90)

    QOut("O valor mensal total do plano é: R$ ", nValorTotal)

    RETURN NIL