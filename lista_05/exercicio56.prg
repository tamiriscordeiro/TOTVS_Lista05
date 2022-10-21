// 56.Elaborar um programa que exiba na tela automaticamente todos os
// multiplos de um determinado número informado pelo usuário,
// existentes entre 1 e um limite, que tamabém deverão ser informados
// pelo usuário. Fazer duas versões da solução utilizando diferentes
// estruturas de repetição, a sua escolha.

Function Main()

    local nMultiplo := 0
    local nMaximo  := 0

        while ISDIGIT(nMultiplo) = .F.
            ACCEPT "Digite o valor: " TO nMultiplo
        enddo

        while ISDIGIT(nMaximo) = .F.
            ACCEPT "Digite o valor maximo: " TO nMaximo
        enddo

    Enquanto(nMultiplo , nMaximo)

    QOUT("")

    Para(nMultiplo , nMaximo)

Return NIL

static function Enquanto(nMultiplo , nMaximo)

    local nI    := 1

    nMultiplo := Val(nMultiplo)
    nMaximo := Val(nMaximo)

    while nI <= nMaximo

        if nI % nMultiplo == 0 
                QOUT(Alltrim(StrZero(nI, 3)) , "eh multiplo de" , Alltrim(StrZero(nMultiplo, 3)))
        endif
        nI++
    enddo

RETURN NIL

static Function Para(nMultiplo , nMaximo)

    local nI    := 1

    nMultiplo := Val(nMultiplo)
    nMaximo := Val(nMaximo)

        for nI := 1 to nMaximo
        if (nI % nMultiplo) == 0
            QOUT(Alltrim(StrZero(nI)) , "eh multiplo de" , Alltrim(STRZERO(nMultiplo)))
        endif
    next nMultiplo

Return NIL
