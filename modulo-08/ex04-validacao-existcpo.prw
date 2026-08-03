#include "protheus.ch"

USER FUNCTION VALCLI001()

    // libera a validação para não travar a digitação inicial do usuário.
    IF Empty(M->ZA1_CLIENT) .OR. Empty(M->ZA1_LOJA)
        RETURN .T. // Retorna Verdadeiro (válido)
    ENDIF

    // Consulta no banco se a combinação de Cliente + Loja nao existe no índice 1 da tabela SA1 (Clientes).
    IF !ExistCpo("SA1", M->ZA1_CLIENT + M->ZA1_LOJA, 1)
        
        // Exibe uma mensagem de alerta na tela informando que o cadastro não foi localizado
        MsgAlert("Cliente não cadastrado na SA1!", "Atenção")
        
        RETURN .F. // Impede o usuário de avançar ou salvar o campo
    ENDIF

RETURN .T.