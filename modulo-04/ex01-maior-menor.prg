FUNCTION main()

    LOCAL nNum1 := 0 
    LOCAL nNum2 := 0 

    ACCEPT "Digite o primeiro numero: " TO nNum1
    ACCEPT "Digite o segundo numero: " TO nNum2

    nNUm1 := VAL(nNum1)
    nNum2 := VAL(nNum2)

    IF nNum1 > nNum2
        QOut("O primeiro numero, " , nNum1 , " ,é maior que o segundo")
    elseif nNum1 < nNum2
        QOut("O segundo numero, " , nNum2 , " ,é maior que o primeiro")
    else
        QOut("Os dois numeros são iguais")
    endif

    RETURN NIL
