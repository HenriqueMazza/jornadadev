FUNCTION main()

    LOCAL nNum := 0
    LOCAL cOpcao := ""

    QOut("===========================")
    QOut("ESCOLHA UMA OPCAO:")
    QOut("===========================")
    QOut("a - 1 a 100")
    QOut("b - -50 a 50")
    QOut("c - 80 a 5 ordem decrescente")
    QOut("") 
    ACCEPT "Digite a opcao desejada (a, b ou c): " TO cOpcao

    cOpcao := Lower(cOpcao)

    DO CASE
        CASE cOpcao == "a"
            FOR nNum := 1 TO 100
                QOut(nNum)
                Inkey(0.1)
                NEXT

        CASE cOpcao == "b"
            FOR nNum := -50 TO 50
                QOut(nNum)
                Inkey(0.1)
                NEXT
        CASE cOpcao == "c"
            FOR nNum := 80 TO 5 STEP -1
                QOut(nNum)
                Inkey(0.1)
                NEXT

        OTHERWISE
            QOut("Opcao invalida")
    ENDCASE


    RETURN NIL