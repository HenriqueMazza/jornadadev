FUNCTION main ()

    LOCAL cNomeCompleto := "Henrique"
    LOCAL cNomeReduzido := "Henri"   
    hb_cdpSelect("PT850") 
    QOut("Explicando a diferenca entre = e == em Harbour")
    QOut("")
    QOut("'=' Ç utilizado para a comparaáao entre valores de forma flexivel e parcial de valores, por exemplo verificando se apenas o inicio de um String Ç igual ao inicio de outra String, J† o '==' compara duas Strings de forma exata, resultando em False se os valores forem minimamente diferentes")
    QOut("")
    QOut("Valores Utilizados no exemplo 'Henrique' e 'Henri'")
    if (cNomeCompleto == cNomeReduzido)
        QOut("Os valores s∆o identicos")
    else
        QOut("' Utilizando == ' Os valores comparados nao sao identicos, portanto o resultado da comparaá∆o Ç False")
    endif

        if (cNomeCompleto = cNomeReduzido)
        QOut("' Utilizando = ' Os valores comparados podem ou nao serem identicos, pois est† sendo utilizado o '='")
    else
        QOut("Os valores nao sao identicos")
    endif

RETURN NIL
