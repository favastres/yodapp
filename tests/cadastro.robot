*Settings*
Documentation    Suíte de testes para cadastro de personagens

Library    ${EXECDIR}/resources/factories/users.py

Resource    ${EXECDIR}/resources/base.robot

Test Setup       Start Session
Test Teardown    End Session

*Test Cases*
Cadastrar um novo personagem
    [Tags]    happy

    ${user}    Factory Yoda

    Go To User Form
    Fill User Form                 ${user}
    Select Jedi                    ${user}[tpjedi]
    Check Accept Communications
    Submit User Form
    Toaster Message Should Be      Usuário cadastrado com sucesso!
    Go To Home Page
    User Should Be Visible         ${user}

E-mail incorreto
    [Tags]    inv-email

    ${user}    Factory Darth Vader

    Go To User Form
    Fill User Form                 ${user}
    Check Accept Communications
    Submit User Form
    Toaster Message Should Be      Oops! O email é incorreto.    
    Go To Home Page