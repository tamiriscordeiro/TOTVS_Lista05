// 61.Desenvolver uma m�quina de soma (c�lculo de somat�rio). O
// programa dever� ler uma s�rie indefinida de valores informados pelo
// usu�rio. A leitura dever� prosseguir at� que o valor zero seja
// informado. Ao final apresentar na tela o total do somat�rio.
// Implementar uma vers�o com cada uma das tr�s estruturas de
// repeti��o e mais uma utilizando o desvio incondicional.

Function Main()

    local nI     := 1
    local nSoma  := 0
    local nNum   := 0


    Para(nI , nSoma , nNum)

    QOUT("")
    
    Enquanto(nI , nSoma, nNum)

Return NIL

static Function Para(nI, nSoma, nNum)

    QOUT("Usando while")

    FOR nI := 1 to 2 step 1
        ACCEPT "Escreva um numero para ser somado ou '0' para parar: " to nNum
            nNum := Val(nNum)

        IF nNum == 0 
            ni := 2
        
        ELSE 
        nSoma := nSoma + nNum

            QOUT("A soma dos numeros eh: " , Alltrim(Str(nSoma)))
            nI := 1

        ENDIF

    NEXT

    QOUT("")
    QOUT("Total: " , Alltrim(Str(nSoma)))

Return NIL

static Function Enquanto(nI, nSoma , nNum)

    local lLoop := .T.

    QOUT("Usando for")

    WHILE lLoop
        ACCEPT "Escreva um numero para ser somado ou '0' para parar: " to nNum
            nNum := Val(nNum)

        IF nNum == 0
            lLoop := .F.
        
        ELSE
            nSoma := nSoma + nNum

            QOUT("A soma dos numeros eh: " , Alltrim(Str(nSoma)))
        ENDIF
    ENDDO

    QOUT("Total: " , Alltrim(Str(nSoma)))

Return NIL
