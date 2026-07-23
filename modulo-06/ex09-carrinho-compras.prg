FUNCTION Main()
    LOCAL aCarrinho  := {}
    LOCAL cNome      := ""
    LOCAL cPrecoText := ""
    LOCAL nPreco     := 0
    LOCAL cContinuar := "S"
    LOCAL nTotal     := 0
    LOCAL nI         := 0

    DO WHILE Upper(cContinuar) == "S"
        ACCEPT "Nome do produto: " TO cNome
        
        ACCEPT "Preco: " TO cPrecoText
        nPreco := Val(cPrecoText)

        AAdd(aCarrinho, {cNome, nPreco})
        nTotal := nTotal + nPreco

        ACCEPT "Adicionar outro? (S/N): " TO cContinuar
    ENDDO

    QOut("")
    QOut("CARRINHO")
    
    FOR nI := 1 TO Len(aCarrinho)
        QOut(aCarrinho[nI][1] + " - R$ " + Str(aCarrinho[nI][2]))
    NEXT nI

    QOut("----------------")
    QOut("TOTAL: R$ " + Str(nTotal))

RETURN NIL