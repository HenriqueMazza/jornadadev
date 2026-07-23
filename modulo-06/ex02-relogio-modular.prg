FUNCTION Main()
    LOCAL nI := 0
    LOCAL cHoraAtual := ""
    LOCAL cHoraFormatada := ""

    // Loop 
    FOR nI := 1 TO 30
        cHoraAtual     := ObterHora()
        cHoraFormatada := FormatarHora(cHoraAtual)
        ExibirHora(cHoraFormatada)

        hb_idleSleep(0.99)
    NEXT nI

RETURN NIL

FUNCTION ObterHora()
    LOCAL cHora := Time() 
RETURN cHora

FUNCTION FormatarHora(cHora)
    LOCAL cHoraFormatada := SubStr(cHora, 1, 2) + ":" + SubStr(cHora, 4, 2) + ":" + SubStr(cHora, 7, 2)
RETURN cHoraFormatada 

FUNCTION ExibirHora(cTexto)
    QOut(cTexto)
RETURN NIL