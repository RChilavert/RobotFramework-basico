*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${navegador}  Chrome
${pagina}  https://www.htmlquick.com/es/reference/tags/input-radio.html

*** Test Cases ***
Usando radiobottom
    Open browser    ${pagina}   ${navegador}
    Sleep  3s
    select radio button  empleoactual   tiempocompleto
    Close browser

*** Keywords ***