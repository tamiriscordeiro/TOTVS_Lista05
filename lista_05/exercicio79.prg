// 79.Jogo do “pim” infalível. Fazer um programa que simule o jogo do “pim”. 
// Ele servirá para treinar competidores deste game. 
// Neste jogo você vai verbalizando todos os números de 1 a 60, sendo que
// toda vez que se passa por um múltiplo do número determinado como “pim’, 
// ao invés de cantar o número, devemos dizer “pim”. Exemplo
// O usuário informará o número PIM e o programa exibirá o resultado na tela. 
// Estabelecer um atraso a cada saída para que o jogador possa ira cantando juntamente com o programa.

Function Main()

    Local nI       := 0
    local nTamanho := 60
    local nPim     := 0

    WHILE !IsDigit(nPim) .OR. val(nPim) <= 0 
        ACCEPT "Digite valor do 'PIM': " TO nPim
    ENDDO
    nPim := val(nPim)

    FOR nI := 1 to nTamanho

        IF nI % nPim == 0
            QOUT("Pim")  
            Tone(1500, 10)
        ELSE
            QOUT(Alltrim(str(nI)))
            Tone(750, 5)
        ENDIF

        WaitPeriod(30) //Atraso para o jogador conseguir cantar junto com o programa.
        WHILE WaitPeriod()
        ENDDO
        
    NEXT nI 

Return nil
