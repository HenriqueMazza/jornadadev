FUNCTION Main()

    LOCAL nA := 10, nB := 0, nRes
    LOCAL oErro

    QOut("TRATAMENTO DE ERROS")

    BEGIN SEQUENCE
        QOut("divisao:")
        
        // Teste divisão por zero
        nRes := nA / nB
        QOut("Resultado: " + Str(nRes))

    // Captura o erro com RECOVER WITH oErro
    RECOVER WITH oErro

        QOut("")
        QOut("Erro capturado com sucesso!")
        QOut("Descricao:")
        
        // Exibe oErro
        QOut(oErro:Description)

    END SEQUENCE

    // Continua executando normalmente
    QOut("O programa continua de pé!")

RETURN NIL