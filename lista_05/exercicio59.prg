// Somatoria dos 10 primeiros numeros naturais pares.

Function Main()

    local nI    := 1
    local nSoma := 0
    local nNum  := 0

    Somatoria(nI , nSoma , nNum)

Return NIL

static Function Somatoria(nI, nSoma , nNum)

    do while nI <= 10
        nNum++
        if (nNum % 2) == 0 //Verifica se o número é par
                nSoma := nSoma + nNum //soma com o numero anterior
                nI++ //conta até 10
        endif
    enddo

    QOUT("A soma de todos os 10 primeiros numeros naturais pares eh: " , (alltrim(Str(nSoma))))

Return NIL
