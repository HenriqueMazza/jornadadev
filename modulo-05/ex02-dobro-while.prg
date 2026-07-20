FUNCTION main()

    LOCAL nValor := 1

    WHILE nValor != 0
        ACCEPT "Digite um valor para ser exibido seu dobro (ou 0 para sair): " TO nValor
        nValor := VAL(nValor)
        if nValor == 0
            QOut("Programa encerrado.")
            EXIT
        else
            QOut("Dobro de ", nValor, " : ", ALLTRIM(STR(nValor * 2)))
        endif
    ENDDO

RETURN NIL