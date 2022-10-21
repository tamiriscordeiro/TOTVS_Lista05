// 58.Somatoria dos 10 primeiros numeros naturais

Function Main()

    local nI    := 1
    local nSoma := 0

    Somatorio(nI , nSoma)

Return NIL

static Function Somatorio(nI, nSoma)

    For nI := 1 to 10 step 1 

        nSoma := nSoma + nI
            QOUT("[" , AllTrim(strZero(nI, 3)) , "]" , AllTrim(strZero(nSoma, 3)))

    NEXT

Return NIL
