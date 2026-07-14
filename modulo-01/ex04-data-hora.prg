FUNCTION Main()
    // Trocamos o 'n' por 'c' porque todas são variáveis do tipo caractere (texto)
    LOCAL cName  := "Henrique" 
    LOCAL cCity  := "Poá" 
    LOCAL cCurso := "Harbour/ADVPL" 
    LOCAL cData  := ""           // Declarando a variável de data como texto, sem valor
    LOCAL cHora  := Time()       // Declarando a variavel como tempo
    
    SET DATE FORMAT TO "DD/MM/YYYY"   // Define o formato de data
    cData := DToC(Date())             // Agora sim, guardando na variável certa     

    hb_cdpSelect("PT850") 
    QOut("===========================")
    QOut("  FICHA DE APRESENTAÇÃO ")
    QOut("===========================")
    QOut("Nome: " + cName)
    QOut("Cidade: " + cCity)
    QOut("Curso: " + cCurso)
    QOut("===========================")
    
    // Exercício 4 - Adicionar data e hora
    QOut("Data: " + cData)
    QOut("Hora: " + cHora)
    QOut("=========================================")

RETURN NIL