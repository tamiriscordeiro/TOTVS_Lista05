// 51.Elaborar um programa que exiba na tela automaticamente todos os
// n�meros naturais entre 100 e 0, em ordem decrescente. Fazer 3
// vers�es desta solu��o: uma utilizando la�o com pr�-teste (enquanto),
// outra usando la�o com p�s-teste (repita) e uma �ltima usando la�o
// finito (para).

Function Main()

    local nI := 100

    Enquanto(nI)

    QOUT("")

    Para(nI)

Return NIL

static Function Enquanto(nI) //Funcao para o laco pre teste
    
    QOUT("Usando laco pre teste: WHILE")

    DO WHILE nI >= 0
        QOUT(nI)
            nI--
    ENDDO

Return NIL

static Function Para(nI) //Funcao para o laco finito

    QOUT("Usando laco finito: FOR")

    For nI := 100 to 0 step -1
        QOUT(nI)
    NEXT

Return NIL
