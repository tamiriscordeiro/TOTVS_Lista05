// 66.Um colega seu que trabalha no setor financeiro, mensalmente, tem
// que reajustar valores de contratos recorrentes, com fatores
// acumulados de �ndices diversos, dependendo de cada contrato, tais
// como: IGPM, IPCA, dentre outros. Sabendo que voc� agora � um
// desenvolvedor, ele lhe solicitou que desenvolva uma calculadora para
// c�lculo do fator de acumulado de acr�scimo ou decr�scimo, que
// dever� ser aplicado ao contrato. Ele quer digitar um a um os fatores
// mensais
// e pressionando a tecla �ESC� ao final da s�rie de valores, ver o
// resultado do fator acumulado e, tamb�m, a quantidade de fatores
// digitados. Quer tamb�m, ter a op��o de continuar calculando novas
// s�ries de fatores sem ter que sair do programa e execut�-lo
// novamente at� que realmente queira sair. Analisando a solicita��o do
// seu amigo voc� destacou alguns pontos que dever� levar em
// considera��o na elabora��o do programa:
// a. O c�lculo do acumulado � feito atrav�s da multiplica��o dos
// fatores (produt�rio).
// b. S� s�o v�lidos fatores positivos; menores que zero e maiores do
// que um.

Function Main()
    Local cOpcao      := ""
    Local nTaxa       := 0
    Local nContrato   := -1
    local nQtdFatores := 0

    WHILE !IsDigit(nContrato) .OR. val(nContrato) < 0
        ACCEPT "Valor do contrato: " TO nContrato
    enddo
    nContrato := val(nContrato)

    WHILE .T.
        QOUT("Fator:")
        QOUT("Digite 'ESC' para sair")

        ACCEPT "(A) Acrescimo ou (D) Decrescimo: " to cOpcao
        cOpcao := UPPER(cOpcao)
        IF cOpcao == "A"
            ACCEPT "Acrescimo (%): " to nTaxa
            IF val(nTaxa) > 0
                nContrato := (1 + (Val(nTaxa) / 100)) * nContrato
                nQtdFatores++
            ENDIF
        ELSEIF cOpcao == "D"
            ACCEPT "Decrescimo (%): " to nTaxa
            IF val(nTaxa) > 0
                nContrato := (1 - (Val(nTaxa) / 100)) * nContrato
                nQtdFatores++
            ENDIF
        ELSEIF cOpcao == "ESC"
            exit
        ELSEIF cOpcao != "A" .or. cOpcao != "D" .or. cOpcao != "ESC"
            Qout("Opcao invalida")
            QOUT("")
            Loop
        ENDIF
        QOUT("Novo valor do produto: " + alltrim(STR(Round(nContrato, 2))))
        QOUT("")
    ENDDO
    QOUT("")
    QOUT("Novo valor do produto: " + alltrim(STR(Round(nContrato, 2))))
    QOUT("Quantidade de fatores: " + alltrim(str(nQtdFatores)))
Return nil
