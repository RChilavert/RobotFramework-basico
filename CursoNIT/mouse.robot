*** Settings ***
Library         Selenium2Library

*** Variables ***
${browser}      chrome
${homepage}     http://automationpractice.com/index.php
${icon-home}    id=tryhome
${logo}         id=header_logo

*** Keywords ***
Abrir Pagina
    Open Browser                            ${homepage}     ${browser}
    Maximize Browser Window

Operaciones Con Mouse
    #Open Context Menu                       ${icon-home}
    #Sleep   3s
    #Double Click Element                    ${logo}
    #Sleep   3s
    #Click Link                              Link=Women
    #Sleep   3s
    # simula un Click izquierdo pero no suelta el click
    #Mouse Down                              xpath=/html/body/div/div[2]/div/div[3]/div[1]/div[1]/div/ul/li[1]/span
    #Sleep   3s
    #Mouse Up                                xpath=/html/body/div/div[2]/div/div[3]/div[1]/div[1]/div/ul/li[1]/span
    #Sleep   3s
    #Click Element                           ${logo}
    Sleep   3s
    Mouse Over                              xpath=//a[@title='Women']
    Sleep   3s

*** Test Cases ***
TC Mouse
    Abrir Pagina
    Operaciones Con Mouse
    Close Browser