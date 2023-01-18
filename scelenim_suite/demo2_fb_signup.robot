*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
TC1 Register
    Open Browser    url=https://www.facebook.com     browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Click Element    link=Create New Account
    Input Text    name=firstname    killer
    Input Text    name=lastname    boy
    Input Text    name=reg_email__    killerboy@gmail.com
    Input Text    name=reg_email_confirmation__     killerboy@gmail.com
    Input Password    id=password_step_input    kill13
    #select From List By Label      id=day      2
    Select From List By Label    xpath=//select[@title='Day']       2
    Select From List By Label    id=month   Apr
    Select From List By Label    id=year    2000
    Click Element    xpath=//input[@value='2']
    Click Element    name=websubmit