*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${navegador}  Chrome
${pagina}  https://www.htmlquick.com/es/reference/tags/select.html

*** Test Cases ***
Usando List Box
    Open browser    ${pagina}   ${navegador}
    Sleep  5
    Select from list by label  deporte   Tenis
    Sleep  3

*** Keywords ***