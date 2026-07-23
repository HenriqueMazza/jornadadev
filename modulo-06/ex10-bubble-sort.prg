FUNCTION Main()
    LOCAL aNumeros := {42, 15, 88, 3, 27, 91, 12, 54, 6, 33}
    LOCAL nI       := 0

    QOut("Vetor original (desordenado):")
    ExibirVetor(aNumeros)

    // Chamada da função manual de ordenação
    BubbleSort(aNumeros)

    QOut("")
    QOut("Vetor apos o Bubble Sort (ordenado):")
    ExibirVetor(aNumeros)

RETURN NIL

// FUNÇÕES AUXILIARES

FUNCTION BubbleSort(aV)
    LOCAL nTamanho := Len(aV)
    LOCAL nI       := 0
    LOCAL nJ       := 0
    LOCAL nTemp    := 0

    // Loop externo: controla o número de passadas pelo vetor
    FOR nI := 1 TO nTamanho - 1

        FOR nJ := 1 TO nTamanho - nI


            IF aV[nJ] > aV[nJ + 1]
                nTemp     := aV[nJ]      // Guarda o valor da esquerda
                aV[nJ]    := aV[nJ + 1]  // Move o menor para a esquerda
                aV[nJ + 1]:= nTemp       // Move o maior para a direita
            ENDIF

        NEXT nJ

    NEXT nI

RETURN NIL

FUNCTION ExibirVetor(aV)
    LOCAL nI := 0
    
    FOR nI := 1 TO Len(aV)
        QQOut(AllTrim(Str(aV[nI])) + " ")
    NEXT nI
    QOut("") 
    
RETURN NIL