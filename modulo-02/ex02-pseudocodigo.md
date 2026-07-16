# Exercício 2 — Isto é um algoritmo válido?

## a. "Calcular a área de um retângulo (base × altura)"
INICIO
    DECLARAR base, altura, area COMO NUMERO

    Escreva "Digite a base do retângulo:"
    Leia base

    Escreva "Digite a altura do retângulo:"
    Leia altura

    area ← base * altura

    Escreva "A área do retângulo é: ", area
FIM
---
## b. "Verificar se um número é par ou ímpar"
INICIO
    DECLARAR numero COMO NUMERO

    Escreva "Digite um número inteiro:"
    Leia numero

    Se (numero % 2 = 0) Entao
        Escreva "O número é PAR."
    Senao
        Escreva "O número é ÍMPAR."
    FimSe
FIM
---
## c. "Encontrar o maior entre três números"
INICIO
    DECLARAR n1, n2, n3, maior COMO NUMERO

    Escreva "Digite o primeiro número:"
    Leia n1

    Escreva "Digite o segundo número:"
    Leia n2

    Escreva "Digite o terceiro número:"
    Leia n3

    // Passo 1: Assume que o primeiro é o maior
    maior ← n1

    // Passo 2: Compara com o segundo
    Se (n2 > maior) Entao
        maior ← n2
    FimSe

    // Passo 3: Compara com o terceiro
    Se (n3 > maior) Entao
        maior ← n3
    FimSe

    Escreva "O maior número é: ", maior
FIM
---



