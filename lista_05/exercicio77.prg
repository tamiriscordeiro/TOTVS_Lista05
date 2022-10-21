// 77.Um cliente utiliza uma determinada solução de GED/ECM. Nesta
// solução os usuários criam fichas de produtos e enviam uma série de
// arquivos de imagens deste dado produto. Você foi solicitado a fazer
// uma rotina que vá lendo uma série de dados informando o tamanho
// de cada arquivo em Megabytes. O programa deverá informar ao
// usuário um próximo arquivo estourar o limite estabelecida de 1,5
// Gigabaytes, para cada ficha.

Function Main()

    local nArquivo := 0
    local nTotal   := 0

        While nTotal < 1536
            Accept "Digite o tamanho do arquivo em megabytes a ser inserido na ficha (MB): " TO nArquivo

            IF ISDIGIT(nArquivo)
                nArquivo := VAL(nArquivo)

                IF (nTotal + nArquivo) > 1536
                    QOUT("Este arquivo ira estourar o limite estabelecido de 1.5GB")
                ELSE
                    nTotal := nTotal + nArquivo
                ENDIF
            ENDIF
        ENDDO

    WAIT "Sua ficha atingiu o limite de dados, aperte qualquer tecla para fechar o programa"

Return NIL
