*** Settings ***
Library     SeleniumLibrary

*** Test Case ***
TC1
    Open Browser        browser=chrome 
    Maximize Browser Window            
    Go To    url=https://www.goto.com/meeting/
    Set Selenium Implicit Wait    30s
    Click Element    id=truste-consent-button
    Click Element    link=Try Free