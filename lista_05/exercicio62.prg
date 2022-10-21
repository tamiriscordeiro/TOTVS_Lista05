// 62.Jogo da forca - parte 1: Neste momento trataremos apenas da
// leitura do palpite (�chute�) do usu�rio. Fazer um programa que realize
// a consist�ncia de entrada da digita��o de um palpite do usu�rio de
// modo que ele seja for�ado a digitar uma letra efetivamente. Fazer 3
// vers�es do programa, cada uma com uma das estruturas de
// repeti��o. Responder: qual achou mais adequada? Por qu�?

Function Main()

	local cLetras := ""
	local cChute  := ""

	ENQUANTO(cLetras , cChute)
	QOUT("")
	PARA(cLetras , cChute)


Return NIL

Static Function ENQUANTO(cLetras , cChute)

	local lLoop := .T.

    QOUT("Usando while")

	While lLoop

		Accept "Insira aqui uma letra para ser seu 'chute': " to cChute
		cChute := Upper(cChute)

		WHILE ISALPHA(cChute) == .F.

		Accept "Voce nao digitou uma letra, insira aqui seu 'chute': " to cChute
		cChute := Upper(cChute)

		ENDDO

		WHILE cChute $ cLetras
			ACCEPT "Essa letra ja foi informada anteriormente, tente outra: " TO cChute
			cChute := Upper(cChute)
		ENDDO

			cLetras := cLetras + cChute

		Wait "Valor digitado valido, pressione 'esc' para sair ou 'enter' para continuar"

        IF lastkey() == 27
            lLoop := .F.
        ENDIF
    ENDDO
QOUT("Jogo encerrado")

Return NIL

Static Function PARA(cLetras , cChute)

	local nCOnt := 0

    QOUT("Usando for")

	for nCont:=1 to 2
		ACCEPT "Insira aqui seu 'chute' ou aperte 'enter' para sair: " to cChute
		cChute := UPPER(cChute)

		if cChute == ""
			nCont := 2
		else
			nCont := 1
			if Len(cChute) > 1
				QOUT( "insira apenas 1 letra")
				loop
			else
				if cChute $ cLetras
					QOUT("essa letra j� foi informada anteriormente, tente outra letra")
					loop
				else
					cLetras := cLetras + cChute
				endif
			endif
		endif
	next

	QOUT("Jogo encerrado")

Return NIL
