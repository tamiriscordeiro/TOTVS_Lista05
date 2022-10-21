// 78.Fazer um programa para determinar e exibir se um número informado é primo. 

Function Main()

    local nNum          := 0
    local nI            := 1
    local nDivisores    := 0

    ACCEPT "Digite um numero: " TO nNum
        nNum := val(nNum)

    if nNum > 0
        while nI <= nNum
            if nNum % nI == 0
                nDivisores++
            endif 
            nI++
        enddo 
        
        if nDivisores = 2
            QOUT("")
            QOUT("O numero" , (nNum) ,  "eh primo")
        else
            QOUT("")
            QOUT("O numero" , (nNum) , "nao eh primo")
        endif 

    elseif nNum <= 0 .or. ISDIGIT(nNum) = .f.
        QOUT("")
        QOUT("Valor Invalido")
    endif

return NIL
    


