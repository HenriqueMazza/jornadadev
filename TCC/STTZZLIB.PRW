#Include "protheus.ch"

/*
    Programa : STTZZLIB.PRW
    Autor    : Henrique Rodrigues Mazza do Valle
    Data     : 08/2026

    Biblioteca de fun��es comuns utilizadas no TCC.
*/

User Function STTZZLIB()
Return NIL

/*-------------------------------------------------------------------*/
/* Retorna o nome do fornecedor pela SA2 */
/*-------------------------------------------------------------------*/

User Function NomeFornecedor(cFornec,cLoja)

    Local cNome := ""

    Default cFornec := ""
    Default cLoja   := ""

    // Busca o nome do fornecedor caso o c�digo tenha sido informado
    If !Empty(cFornec)
        cNome := Posicione("SA2",1,xFilial("SA2")+cFornec+cLoja,"A2_NOME")
    EndIf

Return cNome

/*-------------------------------------------------------------------*/
/* Retorna a descri��o do produto pela SB1 */
/*-------------------------------------------------------------------*/

User Function NomeProduto(cCodPro)

    Local cDesc := ""

    Default cCodPro := ""

    // Localiza a descri��o do produto
    If !Empty(cCodPro)
        cDesc := Posicione("SB1",1,xFilial("SB1")+cCodPro,"B1_DESC")
    EndIf

Return cDesc

/*-------------------------------------------------------------------*/
/* Calcula o percentual de n�o conformidade */
/*-------------------------------------------------------------------*/

User Function PercNaoConforme(nOk,nNok)

    Local nPerc := 0

    Default nOk  := 0
    Default nNok := 0

    // Evita divis�o por zero
    If (nOk + nNok) > 0
        nPerc := (nNok / (nOk + nNok)) * 100
    EndIf

Return nPerc

/*-------------------------------------------------------------------*/
/* Verifica se o certificado vence nos pr�ximos 30 dias */
/*-------------------------------------------------------------------*/

User Function CertificadoVencendo(dValCer)

    Local lRet := .F.

    If !Empty(dValCer)

        // Retorna verdadeiro caso a validade esteja entre hoje e +30 dias
        If dValCer >= dDataBase .And. dValCer <= (dDataBase + 30)
            lRet := .T.
        EndIf

    EndIf

Return lRet

/*-------------------------------------------------------------------*/
/* Grava erros da aplica��o em um arquivo de log */
/*-------------------------------------------------------------------*/

User Function GravarLogTCC(cFuncao,oErro)

    Local cLinha := ""

    Default cFuncao := ""

    If oErro <> NIL

        // Monta uma linha com data, hora, fun��o e descri��o do erro
        cLinha := "[" + DToC(Date()) + " " + Time() + "] " + ;
                  cFuncao + " - " + ;
                  oErro:Description + CRLF

        // Salva o log para facilitar futuras an�lises
        MemoWrite("TCC_ERRO.LOG",cLinha)

    EndIf

Return NIL