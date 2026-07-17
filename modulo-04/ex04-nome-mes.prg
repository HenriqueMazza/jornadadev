FUNCTION main()

    LOCAL nMes := 0
    LOCAL aMesesEscritos := { "Janeiro", "Fevereiro", "Marco", "Abril", "Maio", "Junho", "Julho", "Agosto", ;
                                        "Setembro", "Outubro", "Novembro", "Dezembro" }
    
    ACCEPT "Digite o numero do mes (1 a 12): " TO nMes
    nMes := VAL(nMes)

    if nMes >= 1 .AND. nMes <= 12
        QOut("O mes correspondente é: " + aMesesEscritos[nMes])
    else
        QOut("Numero de mes invalido. Digite um numero entre 1 e 12.")
    endif
                                        
RETURN NIL