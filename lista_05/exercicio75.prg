// 75.Elaborar um programa que efetue o cálculo e no final apresente o
// somatório do número de grãos de trigo que se pode obter num
// tabuleiro de xadrez, obedecendo a seguinte regra: colocar um grão de
// trigo no primeiro quadro e, nos quadros seguintes o dobro do quadro
// anterior. Ou seja, no primeiro quadro coloca-se 1 grão, no segundo
// quadro coloca-se 2 grãos (neste momento tem-se 3 grãos), no
// terceiro quadro coloca-se 4 grãos (tendo nesse momento 7 grãos),
// até atingir o sexagésimo quarto quadro. (exercício inspirado em uma
// anedota do livro “O homem que calculava” de Malba Tahan).

Function Main()

    local nI     := 1
    local nSoma  := 0
    local nTrigo := 1

    Anedota(nI , nSoma , nTrigo)
Return NIL

static Function Anedota(nI , nSoma, nTrigo)

    WHILE nI <= 64

        nSoma := nSoma + nTrigo
        nTrigo := nTrigo*2

        QOUT("[" , Alltrim(STRZero(nI, 3)) , "]" , Alltrim(STR(Round(nSoma, 0))))
    nI++
    ENDDO

    QOUT("")
    QOUT("O somatorio do numero de graos de trigo que se pode obter num tabuleiro de xadrez eh: " , Alltrim(STR(Round(nSoma, 0))))

Return NIL
