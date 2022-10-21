// 74.Jogo Adivinha o número - parte 2: Quando o usuário acertar o número gerado deverá ser apresentado o resultado do teste. Da seguinte forma: 
// • Em menos de 5 tentativas exibir a mensagem: “Você é muito bom, acertou em x tentativas.” 
// • Em mais do que 5 e menos do que 9 tentativas: “Você é bom, acertou em x tentativas". 
// • Em mais do que 9 e menos do que 13 tentativas: “Você é mediano, acertou em x tentativas”. 
// • Em mais do que 13: “Você é muito fraco, acertou em x tentativas” 

Function Main()

    local nNumEscolhido := 0
    local nRange := 0
    local nRandom := 0
    local nCont := 0

        nRandom := HB_RandomInt(1,100)

    DO WHILE nNumEscolhido <> nRandom
        ACCEPT "Tente adivinhar o numero sorteado: " TO nNumEscolhido
            nNumEscolhido := VAL(nNumEscolhido)

            IF nNumEscolhido < nRandom
                QOUT("O numero que digitou foi menor que o numero sorteado!")
            
            ELSE
                QOUT("O numero que digitou foi maior que o numero sorteado!")
            ENDIF

            nCont++
    ENDDO

        if nCont < 5
            QOUT("Voce eh muito bom, acertou em " , AllTrim(str(nCont)) , "tentativas." , Alltrim(Str(nRandom)))
        elseif nCont > 5 .or. nCont < 9 
            QOUT("Voce eh bom, acertou em " , AllTrim(str(nCont)) , "tentativas." , Alltrim(Str(nRandom)))
        elseif nCont > 9 .or. nCont < 13
            QOUT("Voce eh mediano, acertou em " , AllTrim(str(nCont)) , "tentativas." , Alltrim(Str(nRandom)))
        else
            QOUT("Voce eh muito fraco, acertou em " , AllTrim(str(nCont)) , "tentativas." , Alltrim(Str(nRandom)))
        endif

RETURN NIL
