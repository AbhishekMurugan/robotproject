*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
TC1
    Open Browser    browser=edge
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    https://www.medibuddy.in/
    Click Element     link=Login
    Click Element    class=coperate
    Click Element    class=coperate
    Input Text    name=userName    john
    Click Element    class=submitbtn
    Input Text    name=password    john123
    Click Element    xpath=//span[text()='Show password']
    Click Element    xpath=//button[text()='Log in']
    Element Should Contain      xpath=//*[contains(text(),'incorrect password')]    You have entered incorrect password.
