FUNCTION main()

    LOCAL nQTD := 0
    LOCAL nTotal := 0
    LOCAL nValor := 1

    WHILE nValor != 0
        ACCEPT "Digite um valor para ser somado (ou 0 para finalizar a conta): " TO nValor
        nValor := VAL(nValor)
        if nValor != 0
            nTotal += nValor
            nQTD++
        else
            QOut("Total dos valores digitados: " + Alltrim(STR(nTotal)))
            QOut("A quantidade de valores digitados foi: " + Alltrim(STR(nQTD)))
        endif
    ENDDO
RETURN NIL