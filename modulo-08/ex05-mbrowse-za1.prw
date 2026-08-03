#include "protheus.ch"

USER FUNCTION STTIP002()

    PRIVATE cCadastro := "Pets"

    // Configura o vetor de regras de cores para a legenda das linhas do mBrowse
    PRIVATE aColors := {;
        {"ZA1_DTNASC < dDataBase - 3650", "BR_VERMELHO"},; 
        {"ZA1_DTNASC == dDataBase",        "BR_AMARELO"},; 
        {".T.",                          "BR_VERDE"};   
    }

    // Define o menu de botões e ações disponíveis na tela do mBrowse
    PRIVATE aRotina := {;
        {"Pesquisar",  "AxPesqui", 0, 1},; // Botão de Pesquisa (opção 1)
        {"Visualizar", "AxVisual", 0, 2},; // Botão de Visualização de registro (opção 2)
        {"Incluir",    "AxInclui", 0, 3},; // Botão para Incluir novo pet (opção 3)
        {"Alterar",    "AxAltera", 0, 4},; // Botão para Alterar dados do pet (opção 4)
        {"Excluir",    "AxDeleta", 0, 5};  // Botão para Excluir o pet (opção 5)
    }

    dbSelectArea("ZA1") 
    dbSetOrder(1) 

    // Monta a tela de navegação da tabela ZA1 aplicando o array de legendas (aColors)
    mBrowse(1, 1, 22, 75, "ZA1", , , , , , aColors)

RETURN NIL