// 69.Elaborar um programa que calcule e exiba as pot�ncias de 3 variando
// de 0 at� 15, ou seja. O Pascal n�o possui uma
// fun��o para c�lculo de pot�ncia, mas possui uma para c�lculo de
// exponencial. Desta forma atrav�s de propriedade matem�tica dos
// logaritmos, voc� pode resolver c�lculo de pot�ncia e at� de ra�zes n
// �simas da seguinte forma: exp( expoente * ln(base));

Function Main()

    local nI   := 0
    local nExp := 0

    For ni := 0 to 15
        nExp := 3 ** nI
        QOUT("3 elevado a [" , alltrim(strzero(nI,3)) , "]" , nExp)
    Next 

Return NIL
