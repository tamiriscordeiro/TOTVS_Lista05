// 55.Elaborar um programa que exiba na tela automaticamente todos os
// multiplos de 3 existentes entre 1 e 100. Utilizar obrigatoriamente o
// laço finito (para) para esta solução.

Function Main()

    local nI := 0

    Para(nI)

Return NIL

Function Para(nI)

    For nI := 0 to 100 step 1

        if (nI % 3) == 0 // checa se o resultado da divisão do número por 3 é igual a zero

        QOUT(AllTrim(StrZero(nI, 2)) , "E MULTIPLO DE 3") // se for, imprime a frase

        endif

    next

Return NIL
