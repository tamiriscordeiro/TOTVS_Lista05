// 77.Um cliente utiliza uma determinada solu��o de GED/ECM. Nesta
// solu��o os usu�rios criam fichas de produtos e enviam uma s�rie de
// arquivos de imagens deste dado produto. Voc� foi solicitado a fazer
// uma rotina que v� lendo uma s�rie de dados informando o tamanho
// de cada arquivo em Megabytes. O programa dever� informar ao
// usu�rio um pr�ximo arquivo estourar o limite estabelecida de 1,5
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
