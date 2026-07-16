FUNCTION Main()

    LOCAL nNota1  := 0
    LOCAL nNota2  := 0
    LOCAL nNota3  := 0
    LOCAL nNota4  := 0
    LOCAL nMedia  := 0

    QOut("Calculando a media ponderada de 4 notas")
    ACCEPT "Digite a primeira nota (peso 1): " TO nNota1
    ACCEPT "Digite a segunda nota (peso 2): " TO nNota2
    ACCEPT "Digite a terceira nota (peso 3): " TO nNota3
    ACCEPT "Digite a quarta nota (peso 4): " TO nNota4

    nNota1 := VAL(nNota1)
    nNota2 := VAL(nNota2)
    nNota3 := VAL(nNota3)
    nNota4 := VAL(nNota4)

    nMedia := ((nNota1 * 1) + (nNota2 * 2) + (nNota3 * 3) + (nNota4 * 4)) / 10

    QOut("Media Ponderada: " + AllTrim(Str(nMedia, 10, 2)))

RETURN NIL