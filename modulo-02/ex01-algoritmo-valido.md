# Exercício 1 — Isto é um algoritmo válido?
o.

---

## Respostas do Exercício

### a. "Some dois números."
* **É válido?** ❌ Não.
* **Explicação:** Falha na clareza e na especificação. Não é dito **quais** dois números devem ser somados e nem **onde** o resultado deve ser mostrado ou armazenado (ambiguidade/incompleto).

---

### b. "Leia um número. Se for positivo, mostre 'positivo'. Senão, mostre 'negativo'."
* **É válido?** ✅ Sim.
* **Explicação:** Possui passos finitos, ordenados e sem ambiguidade.

#### Pseudocódigo
```text
INICIO
    LEIA numero
    SE numero >= 0 ENTAO
        ESCREVA "positivo"
    SENAO
        ESCREVA "negativo"
    FIMSE
FIM