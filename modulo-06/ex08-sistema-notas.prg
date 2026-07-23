FUNCTION Main()
    LOCAL aAlunos      := {}
    LOCAL cEntrada     := ""
    LOCAL nQtdAlunos   := 0
    LOCAL cNome        := ""
    LOCAL nN1 := 0, nN2 := 0, nN3 := 0, nN4 := 0
    LOCAL nMedia       := 0
    LOCAL nI           := 0

    QOut("----------SISTEMA DE NOTAS DE ALUNOS-----------")

    QOut("")

    ACCEPT "Quantos alunos deseja cadastrar? " TO cEntrada
    nQtdAlunos := Val(cEntrada)

    IF nQtdAlunos <= 0
        QOut("Quantidade invalida! Encerrando o programa.")
        RETURN NIL
    ENDIF

    FOR nI := 1 TO nQtdAlunos
        QOut("")
        QOut("Cadastrando Aluno " + AllTrim(Str(nI)) + " de " + AllTrim(Str(nQtdAlunos)) + " ---")
        
        ACCEPT "Nome do Aluno: " TO cNome

        ACCEPT "Nota 1: " TO cEntrada
        nN1 := Val(cEntrada)

        ACCEPT "Nota 2: " TO cEntrada
        nN2 := Val(cEntrada)

        ACCEPT "Nota 3: " TO cEntrada
        nN3 := Val(cEntrada)

        ACCEPT "Nota 4: " TO cEntrada
        nN4 := Val(cEntrada)

        // Adiciona um novo array (linha) dentro do array aAlunos (matriz)
        AAdd(aAlunos, {cNome, nN1, nN2, nN3, nN4})
    NEXT nI

    QOut("")

    QOut("----------RELATORIO FINAL-----------")


    FOR nI := 1 TO Len(aAlunos)
        // Acessa as posições dos arrays dentro de arrays
        cNome := aAlunos[nI][1]
        nN1   := aAlunos[nI][2]
        nN2   := aAlunos[nI][3]
        nN3   := aAlunos[nI][4]
        nN4   := aAlunos[nI][5]

        nMedia := (nN1 + nN2 + nN3 + nN4) / 4

        IF nMedia >= 7.0
            QOut("[APROVADO]  " + PadR(cNome, 20) + " - Media: " + Transform(nMedia, "99.9"))
        ELSE
            QOut("[REPROVADO] " + PadR(cNome, 20) + " - Media: " + Transform(nMedia, "99.9"))
        ENDIF
    NEXT nI

RETURN NIL