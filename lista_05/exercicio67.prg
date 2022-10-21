// 67.[Refactoring do CS 03] Nas olimpíadas deste ano, anotou-se em
// cartões cada uma das medalhas de ouro, prata e bronze, obtidas por
// um determinado país. Faça um programa que leia esses cartões e
// exiba o quadro completo de medalhas obtidas pela delegação do
// país. O cartão com o conteúdo “F” indica que é o último da pilha.

Function Main()

	Local cCartao 	 := ""
	Local nO 	  	 := 0
	Local nP 	  	 := 0
	Local nB 	  	 := 0
	Local nTotal  	 := 0
	local bContinuar := .T.

	DO WHILE (bContinuar) 
		ACCEPT "Informe o tipo da medalha: [P] [B] [O] ou 'F' para parar: " TO cCartao
			cCartao := Upper(cCartao)
		
		WHILE cCartao <> "F" .AND. cCartao <> "P" .AND. cCartao <> "B" .AND. cCartao <> "O"
			Accept "Medalha invalida, insira uma medalha valida ou 'F' para parar: " TO cCartao
				cCartao := Upper(cCartao)
		ENDDO

			IF cCartao == "F"
				bContinuar := .F.

			ELSEIF cCartao == "P"
				nP++
				nTotal++

			ELSEIF cCartao == "O"
				nO++
				nTotal++

			ELSEIF cCartao == "B"
				nB++
				nTotal++
			ENDIF
	ENDDO

	QOUT("")
	QOUT("Ouro:.............", Alltrim(STRZERO(nO, 2)))
	QOUT("Prata:............", Alltrim(STRZERO(nP, 2)))
	QOUT("Bronze:...........", Alltrim(STRZERO(nB, 2)))
	QOUT("Total de Medalhas:", Alltrim(STRZERO(nTotal, 2)))
RETURN nil
