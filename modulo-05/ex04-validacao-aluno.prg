FUNCTION main()

    LOCAL cNome := ""   
    LOCAL cDisc := ""
    LOCAL nNota1 := -1
    LOCAL nNota2 := -1
    LOCAL cInput := ""

    WHILE Len(Trim(cNome)) == 0
        ACCEPT "Digite o nome do aluno: " TO cNome
        cNome := Alltrim(cNome)

        If Len(Trim(cNome)) == 0
            QOut("Nome do aluno nao pode ser vazio. Digite novamente.")
            QOut("")
        ENDIF
    ENDDO

    WHILE Len(cDisc) != 3 .OR. cDisc != Upper(cDisc)
        ACCEPT "Digite a disciplina (Ex: MAT, POR): " TO cDisc
        cDisc := AllTrim(cDisc)
        
        IF Len(cDisc) != 3 .OR. cDisc != Upper(cDisc)
            QOut("Erro: A disciplina deve ter exatamente 3 letras MAIUSCULAS!")
            QOut("")
        ENDIF
    ENDDO

    WHILE nNota1 < 0 .OR. nNota1 > 10
        ACCEPT "Digite a primeira nota (0 a 10): " TO cInput
        cInput := AllTrim(cInput)

        //Verifica se sao numeros e nao letras
        IF VAL(cInput) == 0 .AND. cInput != "0"
            QOut("Erro: Digite apenas numeros!")
            QOut("")
            nNota1 := -1 
        ELSE
            nNota1 := VAL(cInput)
            IF nNota1 < 0 .OR. nNota1 > 10
                QOut("Erro: A nota deve estar entre 0 e 10!")
                QOut("")
            ENDIF
        ENDIF
    ENDDO

    WHILE nNota2 < 0 .OR. nNota2 > 10
        ACCEPT "Digite a segunda nota (0 a 10): " TO cInput
        cInput := AllTrim(cInput)

        IF VAL(cInput) == 0 .AND. cInput != "0"
            QOut("Erro: Digite apenas numeros!")
            QOut("")
            nNota2 := -1 
        ELSE
            nNota2 := VAL(cInput)
            IF nNota2 < 0 .OR. nNota2 > 10
                QOut("Erro: A nota deve estar entre 0 e 10!")
                QOut("")
            ENDIF
        ENDIF
    ENDDO

    QOut("Nome do aluno: " + cNome)
    QOut("Disciplina: " + cDisc)
    QOut("Primeira nota: " + Alltrim(STR(nNota1)))
    QOut("Segunda nota: " + Alltrim(STR(nNota2)))
    QOut("Media das duas notas: " + Alltrim(STR((nNota1 + nNota2) / 2)))
    
RETURN NIL