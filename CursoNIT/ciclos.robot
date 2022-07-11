*** Settings ***
Library             Selenium2Library
Library             String

*** Variables ***
${browser}      chrome
${homepage}     http://automationpractice.com/index.php
${img1}         //h5[@itemprop='name']//a[@href='http://automationpractice.com/index.php?id_product=1&controller=product']
${img2}         //h5[@itemprop='name']//a[@href='http://automationpractice.com/index.php?id_product=2&controller=product']
${img3}         //h5[@itemprop='name']//a[@href='http://automationpractice.com/index.php?id_product=3&controller=product']
${img4}         //h5[@itemprop='name']//a[@href='http://automationpractice.com/index.php?id_product=4&controller=product']
${img5}         //h5[@itemprop='name']//a[@href='http://automationpractice.com/index.php?id_product=5&controller=product']
${img6}         //h5[@itemprop='name']//a[@href='http://automationpractice.com/index.php?id_product=6&controller=product']
${img7}         //h5[@itemprop='name']//a[@href='http://automationpractice.com/index.php?id_product=7&controller=product']
@{nombresDeContenedores}    ${img1}     ${img1}     ${img3}     ${img4}     ${img5}     ${img6}     ${img7}
${imagen}       id=bigpic
${logo}         xpath=//a[@title="My Store"]


*** Keywords ***
Open Homepage
    Open Browser    ${homepage}      ${browser}
    Maximize Browser Window

Hacer Click en Contenedores
    :FOR    ${nombreDeContenedor}   IN      @{nombresDeContenedores}
    \   Click Element                       xpath=${nombreDeContenedor}
    \   Wait Until Element Is Visible       ${imagen}
    \   Click Element                       ${logo}

Validaciones
    Page Should Contain                     Automation Practice Website
    Page Should Contain Textfield           name=search_query
    Element Text Should Be                  id=contact-link         Contact us
    Title Should Be                         My Store

*** Test Cases ***
C001 Contenedores
    Open Homepage
    #Hacer Click en Contenedores
    Sleep   2s
    Validaciones
    Close Browser