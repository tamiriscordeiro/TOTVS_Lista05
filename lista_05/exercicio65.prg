// 65.Fazer um programa que simule um cadastro de usuário e senha para
// um sistema qualquer. O usuário informará um “username” e uma
// senha que deverá ser digitada duas vezes (confirmação de senha).
// Realizar as seguintes consistências:
// a. o “username” deve possuir mais do que 5 caracteres. b. a senha
// e a confirmação da senha devem ser idênticas. c. a senha deve
// possuir ao menos 6 caracteres e deve conter
// obrigatoriamente: ao menos uma letra maiúscula, um dígito
// numérico e um símbolo.

Function Main()

    local cUsuario := ""
    local cSenha   := ""
    local cPassword  := ""
    
    WHILE .T.
        ACCEPT "Usuario: " TO cUsuario
        IF len(cUsuario) < 6
            QOUT("Usuario deve possuir mais do que 5 caracteres")
        ELSE
            EXIT
        ENDIF
    ENDDO

    WHILE .T. 
        ACCEPT "Senha: " TO cSenha
        IF len(cSenha) < 6
            QOUT("A senha deve possuir mais do que 5 caracteres")
        ELSEIF !TesteSenha(cSenha)
            QOUT("A senha deve possuir ao menos uma letra maiuscula, um digito numerico e um simbolo")
        ELSE
            EXIT
        ENDIF
    ENDDO

    WHILE .T.
        ACCEPT "Digite novamente a senha: " TO cPassword
        IF cSenha == cPassword
            EXIT
        ELSE
            QOUT("Suas senhas nao coincidem")
        ENDIF
    ENDDO

    QOUT("")
    QOUT("Usuario e Senha cadastrados")


Return NIL

static Function TesteSenha(cSenha)
    local nI       := 0
    local lLet   := .F.
    local lDig  := .F.
    local lSimb := .F.
    
    FOR nI := 1 TO len(cSenha)
        IF isUpper(SubStr(cSenha, nI , 1))
            lLet := .T.
            EXIT
        ENDIF
    NEXT nI
    
    for nI := 1 to len(cSenha)
        IF IsDigit(SubStr(cSenha, nI , 1))
            lDig := .T.
            EXIT
        ENDIF
    NEXT nI
    
    for nI := 1 to len(cSenha)
        IF (asc(SubStr(cSenha, nI, 1)) >= 33 .and. asc(SubStr(cSenha, nI, 1)) <= 47) .or.(asc(SubStr(cSenha, nI, 1)) >=58 .and. asc(SubStr(cSenha, nI, 1)) <=64) .or. (asc(SubStr(cSenha, nI, 1)) >= 91 .and. asc(SubStr(cSenha, nI, 1)) <= 96) .or. (asc(SubStr(cSenha, nI, 1)) >= 123 .and. asc(SubStr(cSenha, nI, 1)) <= 126)
            lSimb := .T.
            EXIT
        ENDIF
    NEXT nI

    IF lLet .AND. lDig .AND. lSimb
        RETURN .T.
    ENDIF
RETURN .F.
