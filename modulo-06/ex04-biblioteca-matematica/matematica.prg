// ==========================================
// BIBLIOTECA MATEMÁTICA (matematica.prg)
// ==========================================

// 1. Fatorial (N!)
FUNCTION FatorialN(nN)
    LOCAL nFat := 1
    LOCAL nI   := 0

    IF nN < 0
        RETURN 0
    ENDIF

    FOR nI := 1 TO nN
        nFat := nFat * nI
    NEXT nI

RETURN nFat


// 2. Verifica se é Primo (.T. ou .F.)
FUNCTION EhPrimo(nN)
    LOCAL nI        := 0
    LOCAL nDivisores:= 0

    IF nN <= 1
        RETURN .F.
    ENDIF

    FOR nI := 1 TO nN
        IF nN % nI == 0
            nDivisores++
        ENDIF
    NEXT nI

RETURN (nDivisores == 2)


// 3. Máximo Divisor Comum (MDC)
FUNCTION MDC(nA, nB)
    LOCAL nTemp := 0

    DO WHILE nB != 0
        nTemp := nB
        nB    := nA % nB
        nA    := nTemp
    ENDDO

RETURN nA


// 4. Mínimo Múltiplo Comum (MMC)
FUNCTION MMC(nA, nB)
    IF nA == 0 .OR. nB == 0
        RETURN 0
    ENDIF
RETURN Int(Abs(nA * nB) / MDC(nA, nB))