*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${navegador}  Chrome
${pagina}  https://gmail.com/
${usuario}  rchilavert@nahualit.com
${pass}  CAsa42868166++++

*** Test Cases ***
Ingresar Cuenta De Correo
    Open browser    ${pagina}   ${navegador}
    Input text  id:identifierId   ${usuario}
    click element  xpath://*[@id="identifierNext"]/div/button/div[2]
    Sleep   3s
    Input text  name:password    ${pass}
    click element  xpath://*[@id="passwordNext"]/div/button/div[2]
    Sleep   3s
    close browser

*** Keywords ***