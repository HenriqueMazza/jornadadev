# Exercício 05 — A1_FILIAL e xFilial()

### A. Por que existe o campo A1_FILIAL na tabela SA1 (e por que toda tabela do Protheus, incluindo a ZA1 que criamos, precisa de um campo de filial)?

**Resposta:** Existe para suportar a estrutura multiempresa e multifilial do Protheus. Ele é obrigatório em todas as tabelas para identificar a qual unidade de negócio cada registro pertence e aplicar as regras de compartilhamento (exclusivo ou compartilhado) do Dicionário de Dados (SX2).

---

### B. O que a função xFilial() tem a ver com isso? O que aconteceria se um programa "escrevesse a filial na mão" em vez de usar xFilial()?

**Resposta:** A função `xFilial("ALIAS")` retorna dinamicamente o código correto da filial para gravação ou busca, respeitando a filial logada e o modo de compartilhamento da tabela. Fixar a filial manualmente (ex: `"01"`) quebra essa lógica, gerando inconsistências, falhas na busca ou erros de chave duplicada em tabelas compartilhadas (onde a filial fica em branco).