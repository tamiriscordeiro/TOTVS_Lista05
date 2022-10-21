Function Main()

// 82.Fazer um programa que leia 10 valores e apresente-os na ordem inversa em que foram digitados.

    local aNum := {}
    local nValor  := 0
    local nI     := 0
    local nCont  := 1

    while nCont <= 10
        ACCEPT "Insira um valor: " TO nValor
            nValor := val(nValor)
        aAdd(aNum, nValor)
            nCont++
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
