// 55.Elaborar um programa que exiba na tela automaticamente todos os
// multiplos de 3 existentes entre 1 e 100. Utilizar obrigatoriamente o
// la�o finito (para) para esta solu��o.

Function Main()

    local nI := 0

    Para(nI)

Return NIL

Function Para(nI)

    For nI := 0 to 100 step 1

        if (nI % 3) == 0 // checa se o resultado da divis�o do n�mero por 3 � igual a zero

        QOUT(AllTrim(StrZero(nI, 2)) , "E MULTIPLO DE 3") // se for, imprime a frase

        endif

    next

Return NIL
