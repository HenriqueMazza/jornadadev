FUNCTION Main()
    LOCAL cJogadaUser := ""
    LOCAL cJogadaCPU  := ""
    LOCAL cResultado  := ""
    LOCAL cContinuar  := "S"

    QOut("------ JOGO DO JOKENPO -------- ")

    // Loop de partidas
    DO WHILE Upper(cContinuar) == "S"
        QOut("")
        ACCEPT "Digite sua jogada (pedra, papel, tesoura): " TO cJogadaUser
        cJogadaUser := Lower(AllTrim(cJogadaUser))

        //  Valida a jogada do usuário
        IF .NOT. ValidarJogada(cJogadaUser)
            QOut("Jogada invalida! Digite apenas: pedra, papel ou tesoura.")
            LOOP
        ENDIF

        cJogadaCPU := SortearJogadaCPU()
        QOut("CPU jogou: " + cJogadaCPU)

        cResultado := DefinirVencedor(cJogadaUser, cJogadaCPU)
        QOut("Resultado: " + cResultado)

        QOut("")
        ACCEPT "Deseja jogar outra partida? (S/N): " TO cContinuar
    ENDDO

    QOut("")
    QOut("Obrigado por jogar!")

RETURN NIL

// FUNÇÕES AUXILIARES

// Sorteia aleatoriamente entre pedra, papel e tesoura
FUNCTION SortearJogadaCPU()
    LOCAL aOpcoes := {"pedra", "papel", "tesoura"}
    LOCAL nIndice := hb_RandomInt(1, 3)
RETURN aOpcoes[nIndice]

// Valida o texto 
FUNCTION ValidarJogada(cJogada)
    LOCAL aValidas := {"pedra", "papel", "tesoura"}

RETURN (hb_AScan(aValidas, cJogada) > 0)


FUNCTION DefinirVencedor(cJogada1, cJogada2)

    IF cJogada1 == cJogada2
        RETURN "Empate!"
    ENDIF

    IF (cJogada1 == "pedra"   .AND. cJogada2 == "tesoura") .OR. ;
       (cJogada1 == "papel"   .AND. cJogada2 == "pedra")   .OR. ;
       (cJogada1 == "tesoura" .AND. cJogada2 == "papel")
        RETURN "Voce venceu!"
    ENDIF

RETURN "CPU venceu!"