*Settings*
Documentation    Suíte de testes para cadastro de personagens

Resource    ${EXECDIR}/resources/base.robot

Test Setup       Start Session
Test Teardown    End Session

*Test Cases*
Cadastrar um novo personagem
    [Tags]    happy

    Go To User Form
    Fill User Form                    Mestre Yoda                        yodinha@jedi.com    Jedi    fevereiro-1970-20    @yodinha
    Select Jedi                       Cavaleiro Jedi
    Check Accept comunications
    Submit User Form
    Toaster Message Should Be    Usuário cadastrado com sucesso!

E-mail incorreto
    [Tags]    inv-email

    Go To User Form
    Fill User Form                    Darth Vader                   vader&darth.com    Sith    dezembro-1980-15    @darthzinho
    Check Accept Comunications
    Submit User Form
    Toaster Message Should Be    Oops! O email é incorreto.    
