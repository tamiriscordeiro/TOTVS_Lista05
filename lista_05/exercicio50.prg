// 50.Elaborar um programa que exiba na tela automaticamente todos os
// n�meros naturais entre 0 e 100, em ordem crescente. Fazer 3 versões
// desta solu��o: uma utilizando la�o com pr�-teste (enquanto), outra
// usando la�o com p�s-teste (repita) e uma �ltima usando la�o finito
// (para).

Function Main()

    local nI := 0

    Enquanto(nI)

    QOUT("")

    Para(nI)

Return NIL

static Function Enquanto(nI) // Fun��o para o la�o pr�-teste

    QOUT("Usando Laco pre-teste: While" )
    
    DO WHILE nI <= 100
        QOUT(nI)
            nI++
    ENDDO

Return NIL

static Function Para(nI)//Funcao para o la�o para

    QOUT("Usando Laco finito: For")

    For nI := 0 to 100 step 1
        QOUT(nI)

    NEXT

Return NIL
