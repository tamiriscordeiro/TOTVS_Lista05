// 73.Faça um programa que leia um conjunto de notas de alunos anotadas
// em cartões, calcule e exiba a média das notas dos alunos, assim
// como a maior e a menor nota da turma. Deverá funcionar para turma
// com qualquer quantidade de alunos, que sempre corresponderá à
// quantidade de notas armazenadas nos cartões. A tecla “ESC” indica o
// encerramento da série de notas.

Function Main()

    local nI     := 0
    local nSoma  := 0
    local nNota  := 0
    local aNotas := {}
    local lLoop  := .T.
    local nMedia := 0

    While lLoop

        WHILE ISDIGIT(nNota) = .F.
            QOUT("")
            ACCEPT "Digite a nota (entre 0 e 10): " to nNota

            WHILE Val(nNota) < 0 .or. Val(nNota) > 10
                QOUT("")
                ACCEPT "Valor invalido, digite a nota (entre 0 e 10): " to nNota

            ENDDO
        ENDDO
        nI++

        nNota := Val(nNota)
        nSoma := nSoma + nNota
        Aadd(aNotas, nNota)

        QOUT("")
        Wait "Valor digitado valido, pressione 'esc' para calcular a media ou 'enter' para continuar"

        IF lastkey() == 27
            lLoop := .F.
        ENDIF
    ENDDO

    MEDIA(@nI , nSoma)
    QOUT("")
    MAIORNOTA(aNotas)
    QOUT("")
    MENORNOTA(aNotas)
Return NIL

Static Function MEDIA(nI , nSoma)

    local nMedia := 0

    nMedia := nSoma / nI
    QOUT("")
    QOUT("A media eh:" , Alltrim(STR(nMedia)))

Return nMedia

Static Function MAIORNOTA(aNotas)

    aSort(aNotas)
    QOUT("Maior nota:" , Alltrim(STR(aNotas[Len(aNotas)])))

Return NIL

Static Function MENORNOTA(aNotas)

    aSort(aNotas)
    QOUT("Menor nota:" , Alltrim(STR(aNotas[1])))

Return NIL
