*Settings*
Documentation    Arquivos principais do projeto

Library    Browser
Library    String

Resource    actions.robot

*Keywords*
Start Session
    New Browser    chromium                                    headless=False
    New Context    viewport={'width': 1920, 'height': 1080}
    New Page       https://yodapp-testing.vercel.app           

End Session
    Take Screenshot