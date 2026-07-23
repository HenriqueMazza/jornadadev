FUNCTION Main()
    LOCAL nOpcao := 0

    ExibirMenu()
    nOpcao := LerOpcao()

    // Validação no começo: interrompe se a opção for inválida
    IF .NOT. ValidarOpcao(nOpcao)
        QOut("Opcao invalida!")
        RETURN NIL
    ENDIF

    ExecutarCalculo(nOpcao)

RETURN NIL

// FUNÇÕES AUXILIARES

FUNCTION ExecutarCalculo(nOpcao)
    LOCAL nNum1 := 0, nNum2 := 0
    LOCAL nResultado := 0
    LOCAL lSucesso := .T.

    nNum1 := LerNumero("Digite o primeiro numero: ")
    nNum2 := LerNumero("Digite o segundo numero: ")

    lSucesso := Calcular(nOpcao, nNum1, nNum2, @nResultado)
    MostrarResultado(lSucesso, nResultado)
RETURN NIL

// Desenha o menu na tela
FUNCTION ExibirMenu()
    QOut("================")
    QOut("   CALCULADORA  ")
    QOut("================")
    QOut("")
    QOut("1 - Soma")
    QOut("2 - Subtracao")
    QOut("3 - Multiplicacao")
    QOut("4 - Divisao")
RETURN NIL

FUNCTION LerOpcao()
    LOCAL cOpcaoRaw := ""
    ACCEPT "Escolha uma opcao: (1,2,3,4) " TO cOpcaoRaw
RETURN Val(cOpcaoRaw)

FUNCTION ValidarOpcao(nOpcao)
RETURN (nOpcao >= 1 .AND. nOpcao <= 4)

FUNCTION LerNumero(cMensagem)
    LOCAL cNumRaw := ""
    ACCEPT cMensagem TO cNumRaw
RETURN Val(cNumRaw)

// Retorna .F. se houver erro de divisão por zero.

FUNCTION Calcular(nOpcao, nNum1, nNum2, nResultado)
    LOCAL lOk := .T.

    DO CASE
        CASE nOpcao == 1
            nResultado := nNum1 + nNum2

        CASE nOpcao == 2
            nResultado := nNum1 - nNum2

        CASE nOpcao == 3
            nResultado := nNum1 * nNum2

        CASE nOpcao == 4
            IF nNum2 == 0
                lOk := .F. // Divisão por zero bloqueada
            ELSE
                nResultado := nNum1 / nNum2
            ENDIF
    ENDCASE

RETURN lOk

// Exibe a mensagem final 
FUNCTION MostrarResultado(lSucesso, nResultado)
    IF lSucesso
        QOut("Resultado: ", AllTrim(Str(nResultado)))
    ELSE
        QOut("Erro: Divisao por zero nao permitida.")
    ENDIF
RETURN NIL