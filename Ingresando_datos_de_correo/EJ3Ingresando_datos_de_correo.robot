*** Setting ***
Library   SeleniumLibrary

*** Variables ***

*** Test Cases ***
Ingresar Cuenta De Correo
    Open browser    https://gmail.com/   Chrome
    Input text  id:identifierId   rchilavert@nahualit.com
    click element  xpath://*[@id="identifierNext"]/div/button/div[2]
    Sleep   3s
    Input text  name:password    CAsa42868166++++
    click element  xpath://*[@id="passwordNext"]/div/button/div[2]
    Sleep   3s
    close browser

*** Keywords ***