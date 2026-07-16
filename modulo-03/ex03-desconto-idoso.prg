FUNCTION Main()

    LOCAL cNome      := ""
    LOCAL cDataNasc  := ""
    LOCAL dDataNasc  := CToD("")
    LOCAL nPreco     := 0
    LOCAL nIdade     := 0
    LOCAL nDesconto  := 0
    LOCAL nTotal     := 0

    SET DATE FORMAT TO "dd/mm/yyyy"

    ACCEPT "Digite o nome do cliente: " TO cNome
    ACCEPT "Digite a data de nascimento (DD/MM/AAAA): " TO cDataNasc
    ACCEPT "Digite o preco do produto: " TO nPreco

    dDataNasc := CToD(cDataNasc)
    nPreco    := VAL(nPreco)

    nIdade := Int((Date() - dDataNasc) / 365)

    IF nIdade > 60
        nDesconto := nPreco * 0.125
    ELSE
        nDesconto := 0
    ENDIF

    nTotal := nPreco - nDesconto

    QOut("Cliente:    " + cNome)
    QOut("Idade:      " + AllTrim(Str(nIdade)) + " anos")
    QOut("Preco:      R$ " + AllTrim(Str(nPreco, 10, 2)))
    QOut("Desconto:   R$ " + AllTrim(Str(nDesconto, 10, 2)))
    QOut("Total:      R$ " + AllTrim(Str(nTotal, 10, 2)))


RETURN NIL