FUNCTION main()

    LOCAL nSalario := 0
    LOCAL nReajuste := 0

    ACCEPT "Digite o salario do funcionario: " TO nSalario

    nSalario := VAL(nSalario)

    IF nSalario < 1000
        nReajuste := (nSalario * 0.15) + nSalario  
        QOut("O salario do funcionario com reajuste é: R$ " + AllTrim(Str(nReajuste, 10, 2))) 
    ELSEIF nSalario >= 1000 .AND. nSalario <= 2000
        nReajuste := (nSalario * 0.12) + nSalario
        QOut("O salario do funcionario com reajuste é: R$ " + AllTrim(Str(nReajuste, 10, 2)))
    ELSEIF nSalario >= 2000 .AND. nSalario <= 4000
        nReajuste := (nSalario * 0.08) + nSalario
        QOut("O salario do funcionario com reajuste é: R$ " + AllTrim(Str(nReajuste, 10, 2)))
    ELSE
        nReajuste := (nSalario * 0.05) + nSalario
        QOut("O salario do funcionario com reajuste é: R$ " + AllTrim(Str(nReajuste, 10, 2)))
    endif

    RETURN NIL