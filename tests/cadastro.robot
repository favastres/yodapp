*Settings*
Documentation    Suíte de testes para cadastro de personagens

Resource    ${EXECDIR}/resources/base.robot

Test Setup       Start Session
Test Teardown    End Session

*Test Cases*
Cadastrar um novo personagem
    [Tags]                     happy

    Go To User Form

    Fill User Form

    Click                      css=button >> text=Cadastrar
    Wait For Elements State    css=.toast div >> text=Usuário cadastrado com sucesso!             visible             5

E-mail incorreto
    [Tags]                     inv-email

    Click                      text=Novo
    Wait For Elements State    css=.card-header-title >> text=Cadastrar novo usuário           visible            5
    Fill Text                  css=input[placeholder^="Nome"]                                  Darth Vader 
    Fill Text                  css=input[placeholder="Email"]                                  vader&darth.com
    Select Options By          css=.ordem select                                               text               Sith
    Select Birth Date          janeiro-1990-17
    Fill Text                  id=insta                                                        @darthzinho
    Click                      xpath=//input[@name="comunications"]/../span[@class="check"]
    Click                      css=button >> text=Cadastrar                                    
    Wait For Elements State    css=.toast div >> text=Oops! O email é incorreto.               visible            5       


*Keywords*
Select Birth Date
    [Arguments]          ${text_date}
    @{date}              Split String         ${text_date}   -


    Click                css=input[placeholder="Data de nascimento"]
    Select Options By    xpath=(//header[@class="datepicker-header"]//select)[1]                  text       ${date}[0]    
    Select Options By    xpath=(//header[@class="datepicker-header"]//select)[2]                  text       ${date}[1]
    Click                xpath=//a[contains(@class, "datepicker-cell")]//span[text()="${date}[2]"]