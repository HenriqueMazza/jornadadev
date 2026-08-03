## Exercicio 1 - Conceitos Fundamentais

### a. Qual é a função do AppServer?
É o motor do Protheus que processa toda a lógica do sistema. Ele recebe os comandos das telas dos usuários, executa as regras de negócio e conversa diretamente com o banco de dados para buscar e gravar informações.

### b. O que é o RPO?
É o arquivo que guarda todas as rotinas compiladas do sistema (tanto as padrão da TOTVS quanto as customizações). Ele funciona como a "biblioteca de programas" que o AppServer lê para rodar qualquer função.

### c. Para que serve o Configurador (SIGACFG)?
É a central de controle do Protheus. Serve para administrar usuários e senhas, liberar permissões, alterar parâmetros de funcionamento e ajustar o dicionário de dados (tabelas e campos).

### d. Qual a diferença entre campo Real e campo Virtual no SX3?
Campo Real: Cria uma coluna de verdade no Banco de Dados. O dado digitado nele fica gravado permanentemente na tabela.

Campo Virtual: Existe só na tela e no Dicionário (SX3). Ele não vira coluna no banco e serve apenas para mostrar dados temporários, fórmulas ou descrições calculadas na hora.