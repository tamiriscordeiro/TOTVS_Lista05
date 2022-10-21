Function Main()

// 83.Altera o algoritmo anterior, para que faça o mesmo para 10.000 valores.

    local aNum := {}
    local nValor  := 0
    local nI     := 0
    local nCont  := 0

    while nCont <= 10000
        nCont++
        aAdd(aNum, nCont)
    enddo 

    ListaDados(aNum, .t.)

RETURN NIL

static function ListaDados(aNum, lInverte)

    local nI        := 1
    local nInicio   := 1
    local nFim      := Len(aNum)
    local nStep     := 1

    if lInverte = NIL
        lInverte := .F.
    endif

    Qout()
    if lInverte
        nInicio   := Len(aNum)
        nFim      := 1
        nStep     := -1
    endif

    for nI := nInicio to nFim step nStep
        qOut(aNum[nI])
    next

return nil
