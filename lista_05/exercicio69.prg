// 69.Elaborar um programa que calcule e exiba as potências de 3 variando
// de 0 até 15, ou seja. O Pascal não possui uma
// função para cálculo de potência, mas possui uma para cálculo de
// exponencial. Desta forma através de propriedade matemática dos
// logaritmos, você pode resolver cálculo de potência e até de raízes n
// ésimas da seguinte forma: exp( expoente * ln(base));

Function Main()

    local nI   := 0
    local nExp := 0

    For ni := 0 to 15
        nExp := 3 ** nI
        QOUT("3 elevado a [" , alltrim(strzero(nI,3)) , "]" , nExp)
    Next 

Return NIL
