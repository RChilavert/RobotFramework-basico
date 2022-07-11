*** Setting ***
Library  SeleniumLibrary

*** Variables ***


*** Test Case ***
Buscar Nintendo en google
    Open browser    https://www.google.com/   Chrome
    Input text    name:q   Nintendo
    Sleep   3s
    Press Key    name:q   \\13
    Sleep   3s
    close.browser

*** Keywords ***