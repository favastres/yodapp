*Settings*
Documentation    Ações customizadas para rodar o yodapp

*Keywords*
Go To User Form
    Click                      text=Novo
    Wait For Elements State    css=.card-header-title >> text=Cadastrar novo usuário    visible    5

Fill User Form
    [Arguments]    ${name}    ${email}    ${ordem}

    Fill Text            css=input[placeholder^="Nome"]                                     ${name} 
    Fill Text            css=input[placeholder="Email"]                                     ${email}
    Select Options By    css=.ordem select                                                  text        ${ordem}
    Click                xpath=//input[@value="Cavaleiro Jedi"]/..//span[@class="check"]
    Select Birth Date    fevereiro-1970-20
    Fill Text            id=insta                                                           @yodinha
    Click                xpath=//input[@name="comunications"]/../span[@class="check"]