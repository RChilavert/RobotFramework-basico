*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${navegador}  Chrome
${pagina}  https://www.htmlquick.com/es/reference/tags/input-checkbox.html

*** Test Case ***
Trabajando con checkbox
    Open browser    ${pagina}  ${navegador}
    Sleep  3s
    selectcheckbox  cb-videojuegos

*** Keywords ***
