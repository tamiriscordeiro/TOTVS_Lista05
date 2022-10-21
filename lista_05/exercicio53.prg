// 53.Elaborar um programa que exiba na tela, automaticamente, valores
// gerados aleatoriamente, entre 10 e 99. Os valores dever�o ser
// gerados indefinidamente at� que surja o valor 80, que ao surgir n�o
// deve ser exibido na tela. Fazer 3 vers�es desta solu��o: uma
// utilizando la�o com pr�-teste (enquanto), outra usando la�o com
// p�s-teste (repita) e uma �ltima usando la�o finito (para).

Function Main()

    local nI      := 1
    local nRandom := 0 

    Enquanto(nI , nRandom)

    QOUT("")

    Para(nI , nRandom)

Return NIL

static Function Enquanto(nI , nRandom) //Funcao para o la�o pre teste while

    do while nRandom <> 80 //loop funciona at� o valor 80

        nRandom := HB_RandomInt(10,99) //gerando numeros aleatorios entre 10 e 99
        if nRandom <> 80 
            QOUT("While [" , AllTrim((StrZero(nI, 4))) , "]" , Alltrim(StrZero(nRandom, 3))) // imprime os n�meros que n�o s�o 80
            nI++
        endif
    enddo

Return NIL

static Function Para(nI , nRandom) //Funcao para o la�o finito for

    local nCont := 0

    For nI := 1 to 2 //faz o "For" funcionar infinitamente at� o random gerar o numero 80

        nRandom := HB_RandomInt(0,100) //gerando numeros aleatorios entre 10 e 99
            if nRandom <> 80 
                QOUT("For [" , AllTrim(StrZero(nCont, 4)) , "]" , Alltrim(StrZero(nRandom, 3))) //imprime os numeros que n�o s�o 80
                nI := 1
                nCont++
            else
                nI := 2
            endif
    next nI

 Return NIL
