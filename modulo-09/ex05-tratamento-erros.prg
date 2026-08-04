FUNCTION Main()

    LOCAL nA := 10
    LOCAL nB := 0
    LOCAL nRes
    LOCAL oErro

    QOut("TRATAMENTO DE ERROS")

    BEGIN SEQUENCE
        QOut("divisao:")
        nRes := nA / nB
        QOut("Resultado: " + Str(nRes))

    RECOVER USING oErro

        QOut("")
        QOut("Erro capturado com sucesso!")
        QOut("Descricao:")
        QOut(oErro:Description)

    END SEQUENCE

    QOut("O programa continua de pe!")


RETURN NIL