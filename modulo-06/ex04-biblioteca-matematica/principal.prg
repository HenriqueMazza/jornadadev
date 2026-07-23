SET PROCEDURE TO matematica.prg

FUNCTION Main()
    LOCAL nI    := 0
    LOCAL nBase := 12

    QOut(" TESTANDO BIBLIOTECA MATEMATICA ")

    // Fatorial

    QOut("")
    QOut("Fatorial")
    FOR nI := 1 TO 5
        QOut("Fatorial de " + AllTrim(Str(nI)) + " = " + AllTrim(Str(FatorialN(nI))))
    NEXT nI

    // Primos

    QOut("")
    QOut("Numeros Primos")
    FOR nI := 1 TO 10
        IF EhPrimo(nI)
            QOut("O numero " + AllTrim(Str(nI)) + " -> EH PRIMO")
        ELSE
            QOut("O numero " + AllTrim(Str(nI)) + " -> NAO eh primo")
        ENDIF
    NEXT nI

    // MDC 

    QOut("")
    QOut("MDC")
    FOR nI := 1 TO 5
        QOut("MDC de " + AllTrim(Str(nBase)) + " e " + AllTrim(Str(nI)) + " = " + AllTrim(Str(MDC(nBase, nI))))
    NEXT nI

    // MMC

    QOut("")
    QOut("MMC")
    FOR nI := 1 TO 5
        QOut("MMC de " + AllTrim(Str(nBase)) + " e " + AllTrim(Str(nI)) + " = " + AllTrim(Str(MMC(nBase, nI))))
    NEXT nI

RETURN NIL