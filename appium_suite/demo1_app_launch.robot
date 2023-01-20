*** Settings ***
Library     AppiumLibrary

*** Test Cases ***
TC1
    Open Application    remote_url=http://localhost:4723/wd/hub
    ...     platformName=android
    ...     deviceName=vivo
    ...     app=C:${/}Users${/}40032433${/}Downloads${/}khan-academy-7-3-2.apk
    ${page_soure}   Get Source
    Log To Console    ${page_soure}
    Sleep    5s
    Close Application
TC2
    Open Application    remote_url=http://localhost:4723/wd/hub
    ...     platformName=android
    ...     deviceName=vivo
    ...     app=C:${/}Users${/}40032433${/}Downloads${/}khan-academy-7-3-2.apk
     Wait Until Page Contains Element    xpath=//*[@text='Dismiss']      30s
    Click Element    xpath=//*[@text='Dismiss']

    Wait Until Page Contains Element    xpath=//android.widget.TextView[@text='Sign in']    30s
    Click Element    xpath=//android.widget.TextView[@text='Sign in']
    Wait Until Page Contains Element    xpath=//android.widget.TextView[@text='Sign in']    30s
    Click Element    xpath=//android.widget.TextView[@text='Sign in']
    Wait Until Page Contains Element    xpath=//android.widget.EditText[@content-desc="Enter an e-mail address or username"]    30s
    Input Text    xpath=//android.widget.EditText[@content-desc="Enter an e-mail address or username"]    abhi8385@gmail.com
    Wait Until Page Contains Element       xpath=//android.widget.EditText[@content-desc="Password"]    30s
    Input Text      xpath=//android.widget.EditText[@content-desc="Password"]        abhi1223
    Wait Until Page Contains Element    xpath=//android.widget.Button[@content-desc="Sign in"]/android.widget.TextView    30s
    Click Element    xpath=//android.widget.Button[@content-desc="Sign in"]/android.widget.TextView
    Wait Until Page Contains Element        xpath=//*[contains(@text,'signing')]        30s
    Element Should Contain Text   xpath=//*[contains(@text,'signing')]   There was an issue signing in
    Sleep    5s
    [Teardown]      Close Application


