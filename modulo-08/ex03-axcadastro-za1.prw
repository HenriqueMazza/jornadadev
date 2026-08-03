#include "protheus.ch"

USER FUNCTION STTIP001()

    PRIVATE cCadastro := "Pets"

    dbSelectArea("ZA1")
    dbSetOrder(1)

    // Alteracao feita em aula! 
    AxCadastro("ZA1", "Pets")

RETURN NIL