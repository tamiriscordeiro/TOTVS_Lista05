// 50.Elaborar um programa que exiba na tela automaticamente todos os
// números naturais entre 0 e 100, em ordem crescente. Fazer 3 versÃµes
// desta solução: uma utilizando laço com pré-teste (enquanto), outra
// usando laço com pós-teste (repita) e uma última usando laço finito
// (para).

Function Main()

    local nI := 0

    Enquanto(nI)

    QOUT("")

    Para(nI)

Return NIL

static Function Enquanto(nI) // Função para o laço pré-teste

    QOUT("Usando Laco pre-teste: While" )
    
    DO WHILE nI <= 100
        QOUT(nI)
            nI++
    ENDDO

Return NIL

static Function Para(nI)//Funcao para o laço para

    QOUT("Usando Laco finito: For")

    For nI := 0 to 100 step 1
        QOUT(nI)

    NEXT

Return NIL
