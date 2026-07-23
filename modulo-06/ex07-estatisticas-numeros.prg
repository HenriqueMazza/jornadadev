FUNCTION Main()
    LOCAL aNumeros := {}
    LOCAL cEntrada := ""
    LOCAL nNumero  := 0
    LOCAL nSoma    := 0
    LOCAL nMedia   := 0
    LOCAL nI       := 0

    QOut("     ESTATISTICAS DE 10 NUMEROS     ")
    QOut("")


    FOR nI := 1 TO 10
        ACCEPT "Digite o " + AllTrim(Str(nI)) + "o numero: " TO cEntrada
        nNumero := Val(cEntrada)
        
        // Adiciona o número no final do vetor
        AAdd(aNumeros, nNumero)
        
        // Acumula a soma
        nSoma := nSoma + nNumero
    NEXT nI

    nMedia := nSoma / Len(aNumeros)

    aSort(aNumeros)

    QOut("RESULTADOS:")
    QOut("")
    
    // Exibe os elementos ordenados
    QOut("Numeros em ordem crescente: ")
    FOR nI := 1 TO Len(aNumeros)
        QQOut(AllTrim(Str(aNumeros[nI])) + " ")
    NEXT nI
    QOut("") 

    QOut("Soma total: " + AllTrim(Str(nSoma)))
    QOut("Media:      " + AllTrim(Str(nMedia)))

    QOut("Menor valor: " + AllTrim(Str(aNumeros[1])))
    QOut("Maior valor: " + AllTrim(Str(aNumeros[Len(aNumeros)])))

RETURN NIL