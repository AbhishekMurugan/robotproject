*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
TC1
    Open Browser    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://www.online.citibank.co.in/
    Run Keyword And Ignore Error    Click Element    xpath=//a[@class='fancybox-item fancybox-close']
    Click Element    class=lockSign
    Switch Window    Citibank India
    Click Element    xpath=//div[@class='fl cup pt3']
    Click Element    xpath=//a[@class='sbSelector']
    Click Element    xpath=//a[@rel='Credit Card']
    Input Text    xpath=//input[@id='citiCard1']  4545
    Input Text    id:citiCard2   3456
    Input Text    id:citiCard3     2131
    Input Text    id:citiCard4     9999
    Input Text    id:cvvnumber     131
    Click Element    xpath=//input[@id='bill-date-long']
    Select From List By Label    xpath=//select[@class='ui-datepicker-year']    2022
    Select From List By Label   xpath=//select[@class='ui-datepicker-month']    Apr
    Click Element    link=13
    Click Element    xpath=//input[@class='ctaBlue minWidth']
    Element Should Contain    xpath=//li[contains(text(),'• Please accept Terms and Conditions ')]    Please accept Terms and Conditions

