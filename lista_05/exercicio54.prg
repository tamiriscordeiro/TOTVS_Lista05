// 54.Elaborar um programa que exiba, na tela, todos os caracteres visuais
// da tabela ASCII (do 32 ao 126) no formato “código – caractere”.
// Exemplo: “80 – P”. Fazer 2 versões desta solução: uma utilizando laço
// com pré-teste (enquanto), outra usando laço finito (para).

Function Main()

    Enquanto()

    QOUT("")

    Para()

Return NIL

static Function Enquanto() //Funcao para o laço pre teste while

    local nI := 32

    QOUT("Usando laco pre teste: WHILE")
    QOUT("")

    do while nI <= 126

        QOUT("ASCII: [" , AllTrim(StrZero(nI, 4)) , "] - Caractere :" , chr(nI)) //imprime o codigo e caractere na tabela ASCII
            nI++
    enddo

Return NIL

static Function Para() //Funcao para o laço finito for

    local nI := 32

    QOUT("Usando laco finito: FOR")
    QOUT("")

    for nI = 32 TO 126

        QOUT("ASCII: [" , AllTrim(StrZero(nI, 4)) , "] - Caractere :" , chr(nI)) //imprime o codigo e caractere na tabela ASCII

    next nI

 Return NIL
