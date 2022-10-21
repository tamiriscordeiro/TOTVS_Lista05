// 80.Considere dados referentes a altura e o sexo de 40 pessoas. Fazer um
// algoritmo que calcule e escreva:
// a. A maior e a menor altura do grupo.
// b. A média de altura das mulheres.
// c. O número de homens.

Function Main()

    local nI          := 0
    local aAltura     := {}
    local nAlturaF    := 0
    local nAltura     := 0
    local nMedAlturaF := 0
    Local nHomem      := 0
    local nMulher     := 0
    local cSexo       := ""

    For nI := 1 to 40 STEP 1

        Accept "Digite o sexo da pessoa (M para Masculino e F para Feminino): " TO cSexo         
    
            IF Upper(cSexo) == "F"
                Accept "Digite a altura da mulher (em metros): " TO nAltura
                    nAltura := Val(nAltura)
                    nAlturaF := nAlturaF + nAltura
                    Aadd(aAltura, nAltura)
                nMulher++
            ELSE
                Accept "Digite a altura do homem (em metros): " TO nAltura
                    nAltura := Val(nAltura)
                    Aadd(aAltura, nAltura)
                nHomem++
            ENDIF
                
    Next nI
    
    nMedAlturaF := nAlturaF / nMulher

    ASORT(aAltura)

    QOUT("")
    QOUT("A menor altura do grupo eh:......." , Alltrim(STR(aAltura[1])) , "m; e a maior e: " , Alltrim(STR(aAltura[len(aAltura)])) , "m")
    QOUT("")
    QOUT("A media da altura das mulheres e:" , Alltrim(STR(nMedAlturaF)) , "m")
    QOUT("")
    QOUT("O numero total de homens eh:......" , Alltrim(STR(nHomem)))


Return NIL
