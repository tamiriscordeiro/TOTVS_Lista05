// 53.Elaborar um programa que exiba na tela, automaticamente, valores
// gerados aleatoriamente, entre 10 e 99. Os valores deverão ser
// gerados indefinidamente até que surja o valor 80, que ao surgir não
// deve ser exibido na tela. Fazer 3 versões desta solução: uma
// utilizando laço com pré-teste (enquanto), outra usando laço com
// pós-teste (repita) e uma última usando laço finito (para).

Function Main()

    local nI      := 1
    local nRandom := 0 

    Enquanto(nI , nRandom)

    QOUT("")

    Para(nI , nRandom)

Return NIL

static Function Enquanto(nI , nRandom) //Funcao para o laço pre teste while

    do while nRandom <> 80 //loop funciona até o valor 80

        nRandom := HB_RandomInt(10,99) //gerando numeros aleatorios entre 10 e 99
        if nRandom <> 80 
            QOUT("While [" , AllTrim((StrZero(nI, 4))) , "]" , Alltrim(StrZero(nRandom, 3))) // imprime os números que não são 80
            nI++
        endif
    enddo

Return NIL

static Function Para(nI , nRandom) //Funcao para o laço finito for

    local nCont := 0

    For nI := 1 to 2 //faz o "For" funcionar infinitamente até o random gerar o numero 80

        nRandom := HB_RandomInt(0,100) //gerando numeros aleatorios entre 10 e 99
            if nRandom <> 80 
                QOUT("For [" , AllTrim(StrZero(nCont, 4)) , "]" , Alltrim(StrZero(nRandom, 3))) //imprime os numeros que não são 80
                nI := 1
                nCont++
            else
                nI := 2
            endif
    next nI

 Return NIL
