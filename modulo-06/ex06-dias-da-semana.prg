FUNCTION main()
    LOCAL aDias := {"Domingo", "Segunda-feira", "Terca-feira", "Quarta-feira", "Quinta-feira", "Sexta-feira", "Sabado"}
    LOCAL cEntrada := ""
    LOCAL nEscolha := 0

    DO WHILE .T. 
        QOut("")
        ACCEPT "Escolha um dia da semana (1-7 ou 0 para sair): " TO cEntrada
        nEscolha := Val(cEntrada)

        IF nEscolha == 0
            QOut("Saindo do programa...")
            EXIT
        ENDIF

        IF nEscolha >= 1 .AND. nEscolha <= 7
            QOut("O dia da semana escolhido foi: " + aDias[nEscolha])
        ELSE
            QOut("Erro: Numero invalido! Por favor, digite um valor entre 1 e 7.")
        ENDIF
    ENDDO

RETURN NIL