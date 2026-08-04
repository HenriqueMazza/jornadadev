USER FUNCTION STTIP003SALVAR() 
	LOCAL lOk := .T. 
	LOCAL oErro 
	
	BeginTran() // inicia a transação 

	BEGIN SEQUENCE 
	
		// validacao IF/Break 
		
		IF Empty(M->Z1_CLIENTE) 
			MsgAlert("Cliente e obrigatorio!", "Atencao") 
			lOk := .F. 
			Break() // sem erro
		ENDIF  
		
		// operação no banco
		
		dbSelectArea("SZ1") 
		
		IF INCLUI 
			RecLock("SZ1", .T.) // .T. = True 
		ELSE 
			RecLock("SZ1", .F.) // .F. = 
		ENDIF 
		
		SZ1->Z1_CODIGO := M->Z1_CODIGO 
		SZ1->Z1_CLIENTE := M->Z1_CLIENTE 
		SZ1->Z1_ASSUNTO := M->Z1_ASSUNTO 
		MsUnLock()
		
		RECOVER WITH oErro 
			// erro inesperado
			lOk := .F. 
			RollBackTran() 
			MsgStop("Erro ao salvar: " + oErro:Description, "Erro") 
			U_GRAVARLOG("STTIP003SALVAR", oErro) 
			RETURN lOk 
		END SEQUENCE
		
		IF lOk 
			CommitTran() // confirma a transação 
		ENDIF
		
RETURN lOk