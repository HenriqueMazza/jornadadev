# Controle de Certificados e Não Conformidades de Fornecedores

Projeto desenvolvido como Trabalho de Conclusão de Curso (TCC).

**Programa:** START TOTVS Paulista  
**Tecnologias:** ADVPL • Harbour • TOTVS Protheus

Henrique Rodrigues Mazza do Valle

Programa START TOTVS Paulista

2026

---

# Sobre o Projeto

O projeto consiste no desenvolvimento de uma solução customizada para o ERP TOTVS Protheus, destinada ao controle de certificados de qualidade de fornecedores e ao registro de ocorrências de não conformidade durante o recebimento de materiais.

O sistema utiliza as tabelas customizadas **ZZ1** e **ZZ2**, integradas aos cadastros padrão do Protheus:

- **SA2** — Cadastro de Fornecedores;
- **SB1** — Cadastro de Produtos.

A tabela **ZZ1** é responsável pelo controle dos certificados e informações dos fornecedores, enquanto a tabela **ZZ2** registra as ocorrências de não conformidade relacionadas aos controles cadastrados.

O desenvolvimento foi realizado utilizando **ADVPL/Harbour**, com utilização do ambiente Protheus para compilação, execução e configuração do dicionário de dados.

---

# Objetivos

O sistema tem como principais objetivos:

- cadastrar certificados de qualidade dos fornecedores;
- controlar a validade dos certificados;
- definir uma tolerância máxima para não conformidades;
- registrar ocorrências relacionadas ao recebimento de materiais;
- relacionar ocorrências aos respectivos controles de fornecimento;
- validar fornecedores existentes no sistema;
- validar produtos existentes no sistema;
- acompanhar as quantidades conformes e não conformes;
- facilitar o acompanhamento da qualidade dos fornecedores;
- auxiliar no controle relacionado aos processos de qualidade e ISO 9001.

---

# Regras de Negócio

## ZZ1

- O fornecedor informado deve existir na **SA2**.
- A tolerância de não conformidade deve estar entre **0 e 100**.
- A validade do certificado é controlada pelo sistema.

## ZZ2

- O controle de fornecimento informado deve existir na **ZZ1**.
- O produto informado deve existir na **SB1**.
- A data da ocorrência é validada pelo sistema.

---

# Estrutura do Projeto

TCC/
├── README.md
├── STTZZ1.PRW
├── STTZZ2.PRW
├── STTZZLIB.PRW
├── Dados-e-Dicionario/
└── evidencias/

---

# Banco de Dados
ZZ1 — Controle de Certificados

A tabela ZZ1 é utilizada para armazenar os controles de fornecimento e certificados dos fornecedores.


---

## Relacionamento das Tabelas

Uma informação cadastrada na ZZ1 pode possuir várias ocorrências na ZZ2.

ZZ1
Código: 000001
    |
    +-- ZZ2 - Ocorrência 001
    +-- ZZ2 - Ocorrência 002
    +-- ZZ2 - Ocorrência 003
    +-- ZZ2 - Ocorrência 004`

---

# Funcionalidades
Cadastro de Certificados — ZZ1

## A rotina STTZZ1.PRW é responsável pelo acesso e manutenção dos registros da ZZ1.

consulta dos registros;
inclusão, alteração e exclusão;
controle da validade dos certificados;
acesso às ocorrências relacionadas;
validação do fornecedor;
validação da tolerância.
Cadastro de Ocorrências — ZZ2

## A rotina STTZZ2.PRW é responsável pelo controle das ocorrências.

consulta das ocorrências;
inclusão, alteração e exclusão;
filtro por controle ZZ1;
validação do controle de fornecimento;
validação do produto;
registro das quantidades conformes e não conformes.
Estrutura das Rotinas
STTZZ1.PRW


A função STTZZ1() é responsável por abrir e apresentar o cadastro/consulta da ZZ1, além de disponibilizar o acesso às ocorrências relacionadas.

A rotina também possui a função ValidacoesZZ1(), responsável pelas validações relacionadas aos dados da ZZ1.

## STTZZ2.PRW

Responsável pelas ocorrências da tabela ZZ2.

STTZZ2() — apresentação das ocorrências;
STTZZ2FLT() — filtro das ocorrências de acordo com o controle ZZ1 selecionado;
ValidaZZ2() — validações relacionadas aos dados da ZZ2.
STTZZLIB.PRW

A biblioteca STTZZLIB.PRW concentra funções auxiliares utilizadas pelas demais rotinas.

A centralização das funções permite evitar duplicação de código e facilita a manutenção do projeto.

# Tratamento de Erros

As rotinas utilizam estruturas BEGIN SEQUENCE e RECOVER para tratamento de exceções.

Quando ocorre um erro durante a execução, a rotina realiza o tratamento correspondente e informa o usuário através de mensagem.

Quando aplicável, o erro também é encaminhado para a função de log da biblioteca.

# Tecnologias Utilizadas
ADVPL / Harbour
TOTVS Protheus 8
DevStudio / MP8 IDE
SmartClient
Configurador Protheus
Git / GitHub

---

### Evidências

As evidências do projeto estão organizadas na pasta:

evidencias/

compilação;
ZZ1;
validação do fornecedor;
validação da tolerância;
ZZ2;
relacionamento ZZ1 → ZZ2;
dicionário de dados.
