// 57.Elaborar um programa que gere, automaticamente, valores
// aleatórios, entre 0 e 99 e exiba na tela apenas àqueles que são
// múltiplos de um número informado pelo usuário. A quantidade de
// valores a serem gerados, também deve ser informado pelo usuário. Fazer duas
// versões da solução utilizando diferentes estruturas de repetição, a
// sua escolha.

Function Main()

    local nI        := 1
    local nMultiplo := 0
    local nRandom   := 0
    local nMaximo   := 0

    while ISDIGIT(nMultiplo) == .F.
        ACCEPT "Digite um numero para saber seus multiplos: " TO nMultiplo
    enddo

    while ISDIGIT(nMaximo) == .F.
        ACCEPT "Digite quantos multiplos quer saber: " TO nMaximo
    enddo

    nMultiplo := Val(nMultiplo)
    nMaximo := Val(nMaximo)

    //Enquanto(nI , nMultiplo , nRandom , nMaximo)

    QOUT("")

   Para(nI , nMultiplo , nRandom , nLimite)

Return NIL

static FUNCTION Enquanto(nI , nMultiplo , nRandom , nMaximo)

    while nI <= nMaximo

        QOUT("Os multiplos de " , (Alltrim(strZero(nMultiplo, 3))) , "sao: ")

        nRandom := HB_RandomInt(0,99)

        if (nRandom % nMultiplo) == 0
            QOUT(Alltrim(strZero(nRandom, 3)) , "eh multiplo de" , (Alltrim(strZero(nMultiplo, 3))))
        endif
        nI++
    enddo

RETURN NIL

static Function Para(nI, nMultiplo , nRandom , nMaximo)

    For nI := 1 to nMaximo step 1

        nRandom := HB_RandomInt(0,99)

            QOUT("Os multiplos de " , (Alltrim(strZero(nMultiplo, 3))) , "sao: ")

        if (nRandom % nMultiplo) == 0
        QOUT((Alltrim(strZero(nRandom, 3))))
        endif 
    next

Return NIL
