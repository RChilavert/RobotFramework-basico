*** Settings ***
Documentation       nuestro primer ejemplo
Library             Selenium2Library

*** Keywords ***
Ingresar Al Sitio
    Open Browser                    http://thetestingworld.com/testings/index.php        chrome
    Maximize Browser Window

Loguearse
    Input Text                      name=fld_username       my_user
    Input Text                      name=fld_email          my_user@mail.com
    Input Text                      name=fld_password       123456

Seleccionar Direccion
    Select Radio Button             add_type                home

Seleccionar Genero
    Select From List By Value       name=sex                1

Seleccionar Pais
    [Arguments]                    ${pais}
    Select From List By Label       id=countryId            ${pais}
    ${titulo}               Get Title
    Log To Console          ${titulo}
    Log Title

*** Test Cases ***
001 - Primer Caso de Prueba
    Open Browser                        https://www.google.com      chrome
    Maximize Browser Window
    Title Should Be                     Google
    Log To Console                      Title Pass OK
    Wait Until Element Is Visible       id=hplogo
    Log To Console                      Logo Pass OK
    Sleep                               5s
    ${txt2}=    Get Title
    ${txt3}=    Catenate     Hello    ${txt2}
    Log To Console      ${txt3}
    Close Browser

002 - Seleccionar Radio Button
    Open Browser                    http://thetestingworld.com/testings/index.php       chrome
    Maximize Browser Window
    Select Radio Button             add_type       home
    Select Checkbox                 name=terms
    Click Link                      link=Read Detail
    ${url}=     Get Location
    Log To Console      usted esta navegando por: ${url}
    Close Browser

003 - Loguearse En Facebook
    Open Browser                    https://facebook.com        chrome
    Maximize Browser Window
    Input Text                      id=email                    nahual@mail.com
    Input Text                      id=pass                     123456
    Click Element                   id=u_0_2
    Close Browser

004 - Seleccionar Opcion Dropdown
    [Tags]                          004
    Open Browser                    http://thetestingworld.com/testings/index.php        chrome
    Maximize Browser Window
    Select From List By Value               name=sex                    1
    Select From List By Index               id=countryId                10
    Sleep   4s
    Select From List By Label               id=stateId                  Jujuy

005 - Crear Keywords
    [Tags]                          005
    Ingresar Al Sitio
    Loguearse
    Seleccionar Direccion
    Seleccionar Genero
    Seleccionar Pais                Argentina
    Close Browser