// 72.Fazer um programa para calcular e exibir os "n" primeiros números da série de Fibonacci. 
// O usuário informará o valor de n. 

Function Main()

    local nNum    := 0

        ACCEPT "Insira quantos numeros da serie Fibonacci quer ver: " TO nNum
            nNum := val(nNum)

            while (ChecaInteiro(nNum) = .f.) .or. (nNum < 0)
                    ACCEPT "INVALIDO! Insira um numero inteiro: " TO nNum
                        nNum := val(nNum)
            enddo 

    CalcFib (nNum)

    
Return NIL

Function ChecaInteiro(nNum)

    local nM := 0
    local nS := 0
    local lCheca := 0
    local iIn := 0

    iIn := INT(nNum)

    nM := nNum * 10
    nS := iIn * 10

    IF nM == nS
        lCheca := .t.
    ELSEIF nM <> nS
        lCheca := .f.
    ENDIF

RETURN (lCheca)

function CalcFib(nNum)

    local nA      := 0
    local nB      := 1
    local nC      := 0
    local nCont   := 1

    if nNum = 0
        QOUT(nA)
    elseif nNum = 1
        QOUT(nB)
    else
        QOUT()
        QOUT("A sequencia Fibonacci eh: ")
        QOUT()
        QOUT(StrZero(nCont,4) , ":" , AllTrim(str(nB)))
        while (nCont < nNum)
            nC := nA + nB
            nA := nB
            nB := nC
                nCont++
            QOUT(StrZero(nCont,4) , ":" , AllTrim(str(nC)))
       enddo   
    endif

RETURN NIL



