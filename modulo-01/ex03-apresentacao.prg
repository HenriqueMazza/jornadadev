FUNCTION main()
    LOCAL nName := "Henrique" // Declara variavel
    LOCAL nCity := "Poá" // Declara variavel
    LOCAL nCurso := "Harbour/ADVPL" // Declara variavel
    hb_cdpSelect("PT850") 
    QOut("===========================")
    QOut("  FICHA DE APRESENTAÇÃO ")
    QOut("===========================")
    QOut("Nome: " + nName)
    QOut("Cidade: " + nCity)
    QOut("Curso: " + nCurso)
    QOut("===========================")
RETURN NIL