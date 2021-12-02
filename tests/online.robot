*Settings*
Documentation    Suíte de testes para verificar se o Yodapp está online

Resource    ${EXECDIR}/resources/base.robot

Test Setup       Start Session
Test Teardown    End Session

*Test Cases*
Yodapp deve estar online
    Get Title    equal    Yodapp | QAninja    

Validar mensagem de boas vindas
    Wait For Elements State    css=.navbar-item >> text=Que a Força (qualidade) esteja com você!    visible    5