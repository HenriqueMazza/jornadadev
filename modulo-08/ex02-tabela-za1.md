# Exercício 2 — Completando a tabela ZA1

## a. Cadastro da tabela e dos campos

A tabela `ZA1` está registrada no SX2 com a descrição **Pets**, apontando para o arquivo físico `ZA1990`.

A estrutura da tabela foi completada no SX3 com os campos necessários para relacionar cada pet a um cliente da tabela SA1.

Foram configurados os campos `ZA1_FILIAL`, `ZA1_COD`, `ZA1_CLIENT`, `ZA1_LOJA`, `ZA1_NOMCLI`, `ZA1_NOME`, `ZA1_RACA`, `ZA1_DTNASC` e `ZA1_OBS`, com seus respectivos tipos e tamanhos.


## b. Campo virtual para o nome do cliente

O campo `ZA1_NOMCLI` foi configurado como **Caractere**, com tamanho `40` e contexto **Virtual**. Dessa forma, o nome do cliente é consultado na tabela SA1, mas não é gravado fisicamente na ZA1.


No Inicializador Padrão foi informada a função `U_ZA1NOM()`. No Inicializador de Browse foi utilizado o `POSICIONE` para apresentar o nome do cliente na listagem.


```advpl
#INCLUDE "PROTHEUS.CH"

USER FUNCTION ZA1NOM()

    LOCAL cCliente := ""
    LOCAL cLoja    := ""

    IF INCLUI .OR. ALTERA
        cCliente := M->ZA1_CLIENT
        cLoja    := M->ZA1_LOJA
    ELSE
        cCliente := ZA1->ZA1_CLIENT
        cLoja    := ZA1->ZA1_LOJA
    ENDIF

RETURN POSICIONE("SA1",1,XFILIAL("SA1")+cCliente+cLoja,"A1_NOME")
```

## c. Configuração dos índices

O primeiro índice foi configurado utilizando a filial e o código do pet:

```advpl
ZA1_FILIAL+ZA1_COD
```

O segundo índice foi configurado utilizando a filial, o código do cliente e a loja, ele permite localizar os pets ligados a determinado cliente:

```advpl
ZA1_FILIAL+ZA1_CLIENT+ZA1_LOJA
```

