// 70.Altere o algoritmo do programa anterior de forma a não utilizar a
// função “exp”.

Function Main()

    local nI   := 0
    local nExp := 0

    For ni := 0 to 15
        nExp := 3 ** nI
        QOUT("3 elevado a [" , alltrim(strzero(nI,3)) , "]" , nExp)
    Next 

Return NIL
