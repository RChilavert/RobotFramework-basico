*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${navegador}  Chrome
${pagina}  https://robotframework.org

*** Test Cases ***
Verificando titulo de la pagina
    Open browser    ${pagina}   ${navegador}
    title should be  Robot Framework
    close browser

*** Keywords ***
