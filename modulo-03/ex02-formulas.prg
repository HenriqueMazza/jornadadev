#define PI 3.14159
FUNCTION main()

    LOCAL nRaio := 0
    LOCAL nArea := 0
    LOCAL nCircunferencia := 0
    LOCAL nCatetoA := 0
    LOCAL nCatetoB := 0
    LOCAL nAltura := 0
    LOCAL nPeso := 0

    QOut("a - a area de um circulo com raio informado")
    ACCEPT "Digite o valor do raio em cm: " TO nRaio
    nRaio := val(nRaio)
    QOut("A área é igual a: " + Alltrim(Str(PI * (nRaio ^ 2), 10, 2)))

    QOut("b - a hipotenusa de um triangulo retangulo com catetos informados")
    ACCEPT "Digite o valor do primeiro cateto em cm (a): " TO nCatetoA
    ACCEPT "Digite o valor do segundo cateto em cm (b): "  TO nCatetoB

    nCatetoA := VAL(nCatetoA)
    nCatetoB := VAL(nCatetoB)

    QOut("A hipotesuna é igual a: " + Alltrim(Str(Sqrt((nCatetoA ^ 2) + (nCatetoB ^ 2)), 10, 2)))

    QOut("c - O indice de massa corporal (IMC)")
    ACCEPT "Digite o valor da altura em cm: " TO nAltura
    ACCEPT "Digite o valor do peso em kg: " TO nPeso

    nAltura := VAL(nAltura)
    nPeso := VAL(nPeso)

    // Converte a altura de cm para metros (ex: 175 -> 1.75)
    nAltura := nAltura / 100

    QOut("O IMC é igual a: " + Alltrim(Str(nPeso / (nAltura ^ 2), 10, 2)))

    
RETURN NIL