*** Settings ***
Library  SeleniumLibrary


*** Test Cases ***
Visitar google
    Open browser    http://www.google.com/   Chrome
    Sleep   5s
    close browser