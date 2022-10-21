// 51.Elaborar um programa que exiba na tela automaticamente todos os
// números naturais entre 100 e 0, em ordem decrescente. Fazer 3
// versões desta solução: uma utilizando laço com pré-teste (enquanto),
// outra usando laço com pós-teste (repita) e uma última usando laço
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
