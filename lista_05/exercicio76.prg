// 76.Para cada uma das séries abaixo, elabore um programa que calcule o
// valor de Z. O valor de n deverá ser informado pelo usuário:

Function Main()

    local n1    := 0
    local nI    := 0
    local nSoma := 0

    A(n1 , nI , nSoma)
    B(n1 , nI , nSoma)
    C(n1, nI, nSoma)
Return NIL

static Function A(n1 , nI , nSoma)

    WHILE ISDIGIT(n1) == .F.
        Accept "Digite o valor de 'NA': " TO n1
    ENDDO

    n1 := Val(n1)

    FOR nI := 1 to n1

        nSoma := nSoma + (1/nI)

    NEXT nSoma 

    Qout("Za = " , Alltrim(Str(nSoma)))

Return NIL

static Function B(n1 , nI , nSoma)

    local n2    := 30

    FOR n1 := 1 to 30

    nSoma := nSoma + (n1 / n2)
    n2--

    NEXT nSoma 

    Qout("Zb = " , Alltrim(Str(nSoma)))

Return NIL

static Function C(n1, nI, nSoma)

    WHILE ISDIGIT(nI) == .F.
        Accept "Digite o valor de 'NC': " TO nI
    ENDDO

    nI := Val(nI)

    FOR n1 := 1 to nI 
        
        nSoma := nSoma + n1 / (2*n1)

    NEXT

    Qout("Zc = " , Alltrim(Str(nSoma)))

Return NIL
