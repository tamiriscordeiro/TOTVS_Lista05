// 63.[Refactoring do 24].Ler quatro valores referentes a quatro notas escolares de um aluno e
// imprimir uma mensagem dizendo que o aluno foi aprovado, se 
// o valor da média escolar for maior ou igual a 7.
// *Deverá ser feita a consistência dos dados de entrada para aceitar apenas notas com valores entre 0 e 10.*

Function Main()

    local nSoma  := 0
    local nNum   := ""
    local nMedia := 0
    local nExame := 0

    QOUT("")
    ENQUANTO(@nSoma, nNum , @nMedia)

    QOUT("")
    MEDIA(@nMedia, @nExame)
        
        IF nMedia <= 5
            EXAME(@nMedia, @nExame)
        ENDIF

Return NIL

static Function ENQUANTO(nSoma , nNum , nMedia)

    local lLoop  := .T.
    local nI     := 0

    WHILE nI < 4

        ACCEPT "Digite o valor (entre 0 e 10) da nota ou aperte '' para mostrar a media: " to nNum

            WHILE ISDIGIT(nNum) = .F.
                ACCEPT "Valor invalido, digite a nota (entre 0 e 10): " to nNum

                WHILE Val(nNum) < 0 .or. Val(nNum) > 10
                    ACCEPT "Valor invalido, digite a nota (entre 0 e 10): " to nNum

                ENDDO
            ENDDO

        nSoma := nSoma + Val(nNum)
        nI++
    ENDDO

    nMedia := nSoma / nI

Return nMedia

static Function MEDIA(nMedia, nExame )
    

    IF nMedia >= 7
        QOUT("Parabens, aprovado com media: " , alltrim(str(nMedia)))

    ELSE
        QOUT("Sua media e: " , alltrim(str(nMedia)))
        QOUT("")
        ACCEPT "Reprovado, insira a nota de exame: " TO nExame

            WHILE ISDIGIT(nExame) = .F.
                ACCEPT "Valor invalido, digite a nota (entre 0 e 10): " to nExame

                WHILE Val(nExame) < 0 .or. Val(nExame) > 10
                    ACCEPT "Valor invalido, digite a nota (entre 0 e 10): " to nExame
                ENDDO
            ENDDO
    ENDIF

Return nExame

static Function EXAME(nMedia, nExame)

    local nMediaFim := 0

    nMediaFim := (nMedia + Val(nExame)) / 2 

    IF nMediaFim >= 5
        QOUT("")
        QOUT("Parabens, aprovado por exame. Sua media eh: " , alltrim(str(nMediaFim)))

    ELSE
        QOUT("")
        QOUT("Reprovado por exame. Sua media eh: " , alltrim(str(nMediaFim)))

    ENDIF

Return nMediaFim
