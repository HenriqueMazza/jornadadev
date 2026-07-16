FUNCTION Main()

    LOCAL nA, nB
    LOCAL cA, cB

    ACCEPT "Digite o primeiro numero: " TO cA
    ACCEPT "Digite o segundo numero:  " TO cB

    nA := Val(cA)
    nB := Val(cB)

    QOut("Soma:       " + Alltrim(Str(nA + nB, 10, 2)))
    QOut("Subtracao:  " + Alltrim(Str(nA - nB, 10, 2)))
    QOut("Produto:    " + Alltrim(Str(nA * nB, 10, 2)))

    IF nB <> 0
        QOut("Divisao: " + Alltrim(Str(nA / nB, 10, 2)))
    ELSE
        QOut("Divisao: Nao e possivel dividir por zero!")
    ENDIF

RETURN NIL