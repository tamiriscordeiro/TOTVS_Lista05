// 68.[Refactoring do CS 02]: Faça um programa que leia um conjunto de
// notas de alunos de uma determinada turma, anotadas em cartões,
// calcule e exiba a média das notas dos alunos. Sabe-se que a classe
// possui 15 alunos.

Function Main()

    local nNota      := 0
    local nSoma		 := 0
    local nAlunos    := 0
    local nCont		 := 0
    local nMedia     := 0

    DO WHILE ISDIGIT(nAlunos) == .F.
        ACCEPT "Digite a quantidade de alunos: " TO nAlunos
    ENDDO

    nAlunos := Val(nAlunos)

    DO WHILE (nCont < nAlunos)
        ACCEPT "Digite a nota (entre 0 e 10): " TO nNota
            nNota := Val(nNota)

            IF nNota >0 .AND. nNota <=10

            nSoma := nSoma + nNota
            nCont++
            ELSE
                QOUT("Valor invalido, digite uma nota (entre 0 e 10)")
            ENDIF
    ENDDO

    nMedia := nSoma / nAlunos

    QOUT("A media das notas desses alunos eh: " , alltrim(STR(Round(nMedia, 2))))

Return NIL
