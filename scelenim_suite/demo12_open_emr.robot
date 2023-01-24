*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
TC1
    [Documentation]         #open emr
    Open Browser    url=http://demo.openemr.io/b/openemr/   browser=chrome
   Maximize Browser Window
   Set Selenium Implicit Wait    30s
   Input Text    id:authUser    admin
   Input Password    id:clearPass    pass
   Select From List By Label    xpath=//select[@class="form-control"]   English (Indian)
   Click Button    id=login-button
   Mouse Over    xpath=//div[text()='Patient']

   Click Element    xpath=//div[@class="menuLabel px-1 dropdown-toggle oe-dropdown-toggle"]
   Click Element    xpath=//div[text()='New/Search']
   Select Frame     xpath=//iframe[@src='/b/openemr/interface/new/new.php']
   Click Element    xpath=//input[@id='form_fname']
   Input Text       id:form_fname       abhi
   Click Element    xpath=//input[@id='form_lname']
   Input Text       id:form_lname       shek
   Click Element    xpath=//input[@id='form_DOB']
   Input Text       id:form_DOB         24/01/2023
   Select From List By Label    name:form_sex       Male
   Select From List By Label    name:form_status    Single
   Input Text    id:form_ss    2424 3535
   Click Element    xpath=//button[@id='create']
   Unselect Frame
   Select Frame    xpath=//iframe[@id='modalframe']
   Click Element    xpath=//input[@value='Confirm Create New Patient']
   ${alert_text}   Handle Alert    action=ACCEPT      timeout=30s
    Log To Console    ${alert_text}
    Click Element     xpath=//div[@class='closeDlgIframe']
    Should Contain    xpath=//*[contains(text(),'abhi shek')]     abhi shek


