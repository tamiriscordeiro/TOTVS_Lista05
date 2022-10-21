// 54.Elaborar um programa que exiba, na tela, todos os caracteres visuais
// da tabela ASCII (do 32 ao 126) no formato �c�digo � caractere�.
// Exemplo: �80 � P�. Fazer 2 vers�es desta solu��o: uma utilizando la�o
// com pr�-teste (enquanto), outra usando la�o finito (para).

Function Main()

    Enquanto()

    QOUT("")

    Para()

Return NIL

static Function Enquanto() //Funcao para o la�o pre teste while

    local nI := 32

    QOUT("Usando laco pre teste: WHILE")
    QOUT("")

    do while nI <= 126

        QOUT("ASCII: [" , AllTrim(StrZero(nI, 4)) , "] - Caractere :" , chr(nI)) //imprime o codigo e caractere na tabela ASCII
            nI++
    enddo

Return NIL

static Function Para() //Funcao para o la�o finito for

    local nI := 32

    QOUT("Usando laco finito: FOR")
    QOUT("")

    for nI = 32 TO 126

        QOUT("ASCII: [" , AllTrim(StrZero(nI, 4)) , "] - Caractere :" , chr(nI)) //imprime o codigo e caractere na tabela ASCII

    next nI

 Return NIL
