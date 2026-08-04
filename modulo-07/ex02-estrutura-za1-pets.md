# Exercício 02 — A tabela ZA1 (Pets)

### a. Liste os campos da ZA1 (nome do campo, tipo, tamanho)

| Campo | Tipo | Tamanho |
| :--- | :--- | :--- |
| ZA1_FILIAL | Caracter | 2 |
| ZA1_NOME | Caracter | 50 |
| ZA1_RACA | Caracter | 50 |
| ZA1_DATANC | Data | 8 |

---

### b. Que índice faria sentido para a ZA1? Justifique (lembre da analogia da lista telefônica).

**Resposta:** Faria sentido criar o índice `ZA1_FILIAL + ZA1_NOME`, pois ele deixaria os registros dos pets ordenados alfabeticamente dentro de cada filial. Da mesma forma que uma lista telefônica facilita achar um nome sem precisar ler o livro todo, o índice faz o sistema encontrar o registro de forma muito mais rápida.

---

### c. Explique por que o prefixo da tabela é Z (o que esse prefixo significa em termos de convenção do Protheus).

**Resposta:** Na convenção do Protheus, a letra **Z** é utilizada para identificar tabelas customizadas, ou seja, criadas sob medida para cobrir demandas do cliente. Isso impede que elas sejam misturadas ou sobrescritas pelas tabelas nativas que vêm de fábrica no sistema.

---

### d. Explique por que os campos começam com ZA1_ (ex: ZA1_NOME , ZA1_RACA ) e não apenas com o nome do campo solto.

**Resposta:** O prefixo ZA1_ indica a qual tabela aquele campo pertence de forma direta. Essa padronização evita que ocorra confusão com campos idênticos de outras tabelas e garante a organização do repositório no Protheus.