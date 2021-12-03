*Settings*
Documentation    Arquivos principais do projeto

Library    Browser
Library    String

Resource    actions.robot

*Variables*
${base_url}    https://yodapp-testing.vercel.app    

*Keywords*
Start Session
    New Browser    chromium                                    headless=False
    New Context    viewport={'width': 1920, 'height': 1080}
    New Page       ${base_url}                                 

End Session
    Take Screenshot