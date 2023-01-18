*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
TC1
    Open Browser    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://netbanking.hdfcbank.com/netbanking/
    Select Frame    xpath=//frame[@name='login_page']
    Input Text    name=fldLoginUserId    test123
    Click Element    xpath=//a[@class='btn btn-primary login-btn']
    Unselect Frame
    
TC2
    Open Browser    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://redbus.in
    Click Element    id=sign-in-icon-down
    Click Element    id=signInLink
    Select Frame    xpath=//iframe[@class='modalIframe']
    Input Text    id=mobileNoInp    8608332447
    #Click Element    xpath=//div[@class='social FC DIB']
    Element Should Contain    //span[contains(text(),valid mobile')]    please enter valid mobile number
    Unselect Frame
    Close Browser
