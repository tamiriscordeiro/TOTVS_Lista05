// 81.Jogo do Jokenpô. Desenvolva o jogo “Papel, pedra e tesoura” entre o
// usuário e o computador. Após o usuário informar sua escolha, o
// computador gera sua opção (de maneira randômica); informa a opção
// gerada e compara-a com a opção do usuário, informando quem
// ganhou aquela jogada. Atualiza e exibe um placar que acumula os
// resultados de cada jogada e pergunta se o usuário deseja continuar o
// jogo (encerrar com ESC).

Function Main()

	local nJogador    := 0
	local nComputador := 0
    local cNome       := ""
    local nJogo       := 0

    QOUT("Type [1] for 'PT-BR' or [2] for 'EN'")
    QOUT("Digite [1] para 'PT-BR' ou [2] para 'EN'")
    Accept "[1][2]?..............................:" TO nJogo
        nJogo := Val(nJogo)

    IF nJogo == 1
        BR(nJogador , nComputador , cNome)

    ELSEIF nJogo == 2
        EN(nJogador , nComputador, cNome)

    ELSE
        QOUT("Voce nao digitou uma opcao valida, jogo encerrado")
        QOUT("You did not enter a valid option, game over")
    ENDIF


Return Nil

static Function BR(nJogador , nComputador, cNome)

    local nPontJog  := 0
    local nPontComp := 0
    local lLoop     := .T.

    Accept "Qual seu nome? :" TO cNome


    While lLoop

        nComputador := HB_RandomInt(1,3)

        WHILE !ISDIGIT( nJogador ) .OR. val(nJogador) < 1 .OR. val(nJogador) > 3

        QOUT("")
        Accept "insira aqui sua jogada [1] para 'PEDRA'; [2] para 'PAPEL; [3] para 'TESOURA': " to nJogador

        ENDDO

        nJogador := Val(nJogador)

        IF nComputador == 1
            QOUT("***********************")
            QOUT("Computador jogou 'PEDRA'!" , CHR(13))
            QOUT("    _______    ")
            QOUT("---'   ____)   ")
            QOUT("      (_____)  ")
            QOUT("      (_____)  ")
            QOUT("      (____)   ")
            QOUT("---.__(___)    ")
            QOUT("***********************")

            IF nJogador == 1
                QOUT("EMPATE!")
                QOUT("*************************")
                nPontJog++
                nPontComp++

            ELSEIF nJogador == 2
                QOUT(cNome , "VENCEU!!!!" , CHR(13))
                QOUT("*************************")
                nPontJog++

            ELSEIF nJogador == 3
                QOUT("Computador venceu!" , CHR(13))
                QOUT("*************************")
                nPontComp++
            ENDIF

        ELSEIF nComputador == 2
            QOUT("***********************")
            QOUT("Computador jogou 'PAPEL'!" , CHR(13))
            QOUT("    _______        ")
            QOUT("---'   ____)____   ")
            QOUT("          ______)  ")
            QOUT("          _______) ")
            QOUT("         _______)  ")
            QOUT("---.__________)    ")
            QOUT("***********************")        

            IF nJogador == 1
                QOUT("Computador venceu!" , CHR(13))
                QOUT("*************************")
                nPontComp++

            ELSEIF nJogador == 2
                QOUT("EMPATE!" , CHR(13))
                QOUT("*************************")
                nPontJog++
                nPontComp++


            ELSEIF nJogador == 3
                QOUT(cNome , "VENCEU!!!!" , CHR(13))
                QOUT("*************************")
                nPontJog++
            ENDIF
        

        ELSEIF nComputador == 3
            QOUT("*************************")
            QOUT("Computador jogou 'TESOURA'!" , CHR(13))       
            QOUT("    _______        ")
            QOUT("---'   ____)____   ")
            QOUT("          ______)  ")
            QOUT("       __________) ")
            QOUT("      (____)       ")
            QOUT("---.__(___)        ")
            QOUT("*************************")

            IF nJogador == 1
                QOUT(cNome , "VENCEU!!!!" , CHR(13))
                QOUT("*************************")
                nPontJog++

            ELSEIF nJogador == 2
                QOUT("Computador Venceu!" , CHR(13))
                QOUT("*************************")
                nPontComp++


            ELSEIF nJogador == 3
                QOUT("EMPATE" , CHR(13))
                QOUT("*************************")
                nPontJog++
                nPontComp++
            ENDIF
        ENDIF

        Wait "APERTE 'ENTER' PARA CONTINUAR OU 'ESC' PARA ACABAR A PARTIDA E VER O PLACAR!"

        IF lastkey() == 27
            lLoop := .F.
        ENDIF
    ENDDO

    QOUT("")
    QOUT("RESULTADO:" , Alltrim(cNome) , ":" , Alltrim(STR(nPontJog)) , "| Computador:" ,  Alltrim(STR(nPontComp)))

    IF nPontJog > nPontComp
        QOUT(cNome , "VENCEU A PARTIDA!")

    ELSEIF nPontJog < nPontComp
        QOUT("Computador VENCEU!")
    ELSE
        QOUT("A partida terminou em EMPATE!")

    ENDIF

Return NIL

static Function EN(nJogador , nComputador, cNome)

    local nPontJog  := 0
    local nPontComp := 0
    local lLoop     := .T.

    Accept "What's your name? :" TO cNome

    While lLoop

        nComputador := HB_RandomInt(1,3)

        WHILE !ISDIGIT( nJogador ) .OR. val(nJogador) < 1 .OR. val(nJogador) > 3

        QOUT("")
        Accept "Chose your move [1] for 'ROCK'; [2] for 'PAPER; [3] for 'SCISSORS': " to nJogador

        ENDDO

        nJogador := Val(nJogador)

        IF nComputador == 1
            QOUT("***********************")
            QOUT("Computer chose 'ROCK'!" , CHR(13))
            QOUT("    _______    ")
            QOUT("---'   ____)   ")
            QOUT("      (_____)  ")
            QOUT("      (_____)  ")
            QOUT("      (____)   ")
            QOUT("---.__(___)    ")
            QOUT("***********************")

            IF nJogador == 1
                QOUT("TIE!")
                QOUT("*************************")
                nPontJog++
                nPontComp++

            ELSEIF nJogador == 2
                QOUT(cNome , "WON!!!!" , CHR(13))
                QOUT("*************************")
                nPontJog++

            ELSEIF nJogador == 3
                QOUT("Computer WON!" , CHR(13))
                QOUT("*************************")
                nPontComp++
            ENDIF

        ELSEIF nComputador == 2
            QOUT("***********************")
            QOUT("Computer chose 'PAPER'!" , CHR(13))
            QOUT("    _______        ")
            QOUT("---'   ____)____   ")
            QOUT("          ______)  ")
            QOUT("          _______) ")
            QOUT("         _______)  ")
            QOUT("---.__________)    ")
            QOUT("***********************")

            IF nJogador == 1
                QOUT("Computer WON!" , CHR(13))
                QOUT("*************************")
                nPontComp++

            ELSEIF nJogador == 2
                QOUT("TIE!" , CHR(13))
                QOUT("*************************")
                nPontJog++
                nPontComp++


            ELSEIF nJogador == 3
                QOUT(cNome , "WON!!!!" , CHR(13))
                QOUT("*************************")
                nPontJog++
            ENDIF
        

        ELSEIF nComputador == 3
            QOUT("*************************")
            QOUT("Computer chose 'SCISSORS'!" , CHR(13))
            QOUT("    _______        ")
            QOUT("---'   ____)____   ")
            QOUT("          ______)  ")
            QOUT("       __________) ")
            QOUT("      (____)       ")
            QOUT("---.__(___)        ")
            QOUT("*************************")

            IF nJogador == 1
                QOUT(cNome , "WON!!!!" , CHR(13))
                QOUT("*************************")
                nPontJog++

            ELSEIF nJogador == 2
                QOUT("Computer WON!" , CHR(13))
                QOUT("*************************")
                nPontComp++


            ELSEIF nJogador == 3
                QOUT("TIE!" , CHR(13))
                QOUT("*************************")
                nPontJog++
                nPontComp++
            ENDIF
        ENDIF

        Wait "PRESS 'ENTER' TO CONTINUE OR 'ESC' TO END THE MATCH AND SEE THE SCOREBOARD!"

        IF lastkey() == 27
            lLoop := .F.
        ENDIF
    ENDDO

    QOUT("")
    QOUT("SCOREBOARD:" , Alltrim(cNome) , ":" , Alltrim(STR(nPontJog)) , "| Computer:" ,  Alltrim(STR(nPontComp)))

    IF nPontJog > nPontComp
        QOUT(cNome , "WON THE MATCH!")

    ELSEIF nPontJog < nPontComp
        QOUT("COMPUTER WON!")
    ELSE
        QOUT("DRAW!")

    ENDIF

Return NIL
