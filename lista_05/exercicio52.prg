// 52.Elaborar um programa que exiba na tela, automaticamente, 50
// valores gerados aleatoriamente, entre 10 e 99. Fazer 3 vers�es desta
// solu��o: uma utilizando la�o com pr�-teste (enquanto), outra usando
// la�o com p�s-teste (repita) e uma �ltima usando la�o finito (para).

Function Main()

    local nI      := 1
    local nRandom := 0 

    Enquanto(nI , nRandom)

    QOUT("")

    Para(nI , nRandom)

Return NIL

static Function Enquanto(nI , nRandom) //Funcao para o la�o pre teste while

    DO WHILE nI <= 50 

        nRandom := HB_RandomInt(10,99) //numeros randomicos entre 10 e 99
        QOUT("While [" , AllTrim(StrZero(nI, 4)) , "]" , nRandom)
            nI++
    ENDDO

Return NIL

static Function Para(nI , nRandom) //Funcao para o la�o finito for

    For nI := 1 to 50 STEP 1

        nRandom := HB_RandomInt(10,99) //numeros randomicos entre 10 e 99
        QOUT("For [" , AllTrim(StrZero(nI, 4)) , "]" , nRandom)
    NEXT

Return NIL
