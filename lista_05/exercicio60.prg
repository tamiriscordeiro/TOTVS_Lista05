// 60.Faça um programa que calcule a somatória dos "n" primeiros números
// naturais pares ou ímpares. O usuário informará através de digitação:
// a quantidade de números desejada ("n") e escolhe entre par o ímpar.

Function Main()

    local nI    := 1
    local nSoma := 0
    local nNum  := 0
    local cPar  := ""
    local nLoop := 0

    ACCEPT "Digite quantos numeros quer ver: " TO nLoop

        WHILE ISDIGIT(nLoop) = .F. 
            ACCEPT "Valor invalido, digite um numero inteiro positivo: " to nLoop

            WHILE Val(nLoop) < 0 .AND. Val(nLoop) <> 0
                ACCEPT "Valor invalido, digite um numero inteiro e maior que 0: " to nLoop

            ENDDO
        ENDDO
    QOUT("")
    ACCEPT "Digite 'P' para numeros naturais pares ou 'I' para numeros impares: " TO cPar
        cPar := Upper(cPar)

        WHILE cPar <> "P" .AND. cPar <> "I" 

            ACCEPT "Digite a letra 'P' para numeros naturais pares ou a letra 'I' para numeros impares: " to cPar
                cPar := Upper(cPar)
        ENDDO

        IF cPar == "P"
            PAR(nI , nSoma , nNum , nLoop)
        ELSE
            IMPAR(nI, nSoma , nNum , nLoop)
        ENDIF

Return NIL

static Function PAR(nI, nSoma , nNum, nLoop)

    DO WHILE nI <= Val(nLoop)
        nNum++
        IF (nNum % 2) == 0
            QOUT(alltrim(Str(nNum)) , "par")
                nSoma := nSoma + nNum
                nI++
        ENDIF
    ENDDO

    QOUT("A soma desses numeros pares eh: " , (alltrim(Str(nSoma))))
Return NIL

static Function IMPAR(nI, nSoma , nNum, nLoop)

    DO WHILE nI <= Val(nLoop)
        nNum++
        IF (nNum % 2) <> 0
            QOUT(alltrim(Str(nNum)) , "impar")
                nSoma := nSoma + nNum
                nI++
        ENDIF
    ENDDO

    QOUT("A soma desses numeros impares eh: " , (alltrim(Str(nSoma))))
Return NIL
