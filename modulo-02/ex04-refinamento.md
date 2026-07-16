# Exercício 4 — Refinamento Sucessivo

## Problema:
> *Um sistema de caixa de supermercado deve registrar os itens de uma compra, calcular o subtotal, aplicar desconto se o cliente tiver cartão fidelidade (5%) e mostrar o total a pagar.*

### Nível 1: Visão Geral 
1. Registrar os itens e calcular o subtotal da compra
2. Verificar a disponibilidade e aplicar o desconto de fidelidade
3. Exibir o total a pagar

### Nível 2: Detalhado

#### 1. Registrar os itens e calcular o subtotal da compra
* 1.1. Inicializar a variável `subtotal` com 0.
* 1.2. Enquanto houver itens a serem passados no caixa:
  * 1.2.1. Ler o preço do item.
  * 1.2.2. Somar o preço do item ao `subtotal`.

#### 2. Verificar a elegibilidade e aplicar o desconto de fidelidade
* 2.1. Perguntar ao operador se o cliente possui o cartão fidelidade.
* 2.2. Se o cliente tiver cartão fidelidade:
  * 2.2.1. Calcular o desconto: `desconto = subtotal * 0.05`
  * 2.2.2. Calcular o total: `totalPagar = subtotal - desconto`
* 2.3. Senão:
  * 2.3.1. Definir o total sem desconto: `totalPagar = subtotal`

#### 3. Exibir o total a pagar
* 3.1. Exibir o valor de `subtotal`.
* 3.2. Exibir o valor do `desconto` (se aplicável).
* 3.3. Exibir o valor final contido em `totalPagar`.
