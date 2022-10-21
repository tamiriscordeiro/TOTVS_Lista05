//71.Fazer um programa que dado um número inteiro positivo, informado pelo usuário, calcule n e exiba o seu fatorial. 

Function Main()

    local nFatorial := 0
    local nNum      := 0

        ACCEPT "Digite um numero para saber o valor de seu fatorial: " to nNum

        WHILE ISDIGIT(nNum) = .F.
            ACCEPT "Invalido, digite um numero para saber o valor de seu fatorial: " to nNum
        ENDDO

        nFatorial := Fact(Val(nNum))
        QOUT("O resultado de" , Alltrim(nNum) , "! e:" , Alltrim(STR(Round(nFatorial, 0))))

Return NIL
