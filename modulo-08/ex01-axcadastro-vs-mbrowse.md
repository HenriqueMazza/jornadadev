# Exercício 1 — AxCadastro × mBrowse

### A - Quando você usaria AxCadastro e quando usaria mBrowse? Dê um exemplo de cada.

**AxCadastro:** Indicado para criar telas de manutenção rápidas com comandos básicos de CRUD automatizados. 
**Exemplo:* Um formulário simples de cadastro de raças.
**mBrowse:** Utilizado para interfaces de navegação avançadas que demandam maior flexibilidade. 
*Exemplo:* O painel geral de atendimentos do PetShop, contendo busca avançada e marcadores visuais.

---

### B - Cite três coisas que o mBrowse faz e o AxCadastro não faz.

1. Inclusão de **legendas por cores** nas linhas da grid.
2. Aplicação de **filtros de busca** configuráveis pelo usuário.
3. **Menu de ações e botões customizados** (`aRotina`) além do padrão.

---

### C - Na configuração de legendas (aColors), por que a regra ".T." deve ficar por último?

Como o sistema lê as condições do vetor em ordem descendente e interrompe a checagem no primeiro resultado válido, a instrução `.T.` é a condição coringa (sempre verdadeira). Ela deve fechar a lista para atuar como cor padrão caso nenhuma regra anterior seja satisfeita. Se posicionada antes, ela valida de imediato e invalida o restante da lógica.

---

### D - Qual a diferença entre um campo Virtual (X3_RELACAO) e um gatilho (SX7) para preencher o nome do cliente?

**Campo Virtual (`X3_RELACAO`):** Processa e exibe a informação dinamicamente durante a renderização da tela, sem gerar persistência no banco de dados.
**Gatilho (`SX7`):** É acionado no instante da digitação (ex: ao informar o código do cliente) para buscar e escrever o valor dentro de uma coluna física da tabela.