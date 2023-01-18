*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
TC1 Register
    Open Browser        browser=chrome
    Go To    url=https://www.salesforce.com/in/form/signup/freetrial-sales/
    Input Text    name=UserFirstName    killer
    Input Text    name=UserLastName    boy
    Input Text    name=UserEmail    killerboy@gmail.com
    Select From List By Label    name=UserTitle    IT Manager
    Input Text    name=CompanyName    L&T
    Select From List By Label     name=CompanyEmployees   101 - 500 employees
    Select From List By Label     name=CompanyCountry    United Kingdom
    Click Element    xpath=//div[@class='checkbox-ui']
    Click Element    start my free trial
    Element Text Should Be    //span[contains(@id, 'UserPhone')]    Enter a valid phone number
