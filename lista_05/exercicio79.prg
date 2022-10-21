// 79.Jogo do �pim� infal�vel. Fazer um programa que simule o jogo do �pim�. 
// Ele servir� para treinar competidores deste game. 
// Neste jogo voc� vai verbalizando todos os n�meros de 1 a 60, sendo que
// toda vez que se passa por um m�ltiplo do n�mero determinado como �pim�, 
// ao inv�s de cantar o n�mero, devemos dizer �pim�. Exemplo
// O usu�rio informar� o n�mero PIM e o programa exibir� o resultado na tela. 
// Estabelecer um atraso a cada sa�da para que o jogador possa ira cantando juntamente com o programa.

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
