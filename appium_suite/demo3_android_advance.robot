*** Settings ***
Library     AppiumLibrary

*** Test Cases ***
TC1
    [Documentation]     #working with native app
    Open Application    remote_url=http://localhost:4723/wd/hub
    ...     platformName=android
    ...     deviceName=vivo
    ...     appPackage=org.khanacademy.android
    ...     appActivity=org.khanacademy.android.ui.library.MainActivity
    ...     noReset=true

    Set Appium Timeout    20s
    Run Keyword And Ignore Error    Wait Until Page Contains Element    xpath=//*[@text='Dismiss']
    Run Keyword And Ignore Error    Click Element    xpath=//*[@text='Dismiss']
    Wait Until Page Contains Element    xpath=//android.widget.Button[@content-desc="Search tab"]
    Click Element       xpath=//android.widget.Button[@content-desc="Search tab"]
    Wait Until Page Contains Element    xpath=//android.widget.TextView[@text="Arts and humanities"]
    Click Element       xpath=//android.widget.TextView[@text="Arts and humanities"]
    ${count}        Get Matching Xpath Count    xpath=//*[@text='Art of Asia']
    WHILE    ${count}==0
        Swipe By Percent    90    70    90    20
        ${count}    Get Matching Xpath Count    xpath=//*[@text='Art of Asia']

    END


    Wait Until Page Contains Element       xpath=//*[@text='Art of Asia']
    Click Element    xpath=//*[@text='Art of Asia']
    ${abc}      Get Matching Xpath Count    xpath=//*[@text='South Asia']
    WHILE   ${abc}==0
        Swipe By Percent    90    70    90    20
        ${abc}      Get Matching Xpath Count    xpath=//*[@text='South Asia']

    END
    Wait Until Page Contains Element       xpath=//*[@text='South Asia']
    Click Element    xpath=//*[@text='South Asia']

    ${kill}      Get Matching Xpath Count    xpath=//*[@text='The Taj Mahal']

    WHILE    ${kill}==0
        Swipe By Percent    90    70    90    20
        ${kill}  Get Matching Xpath Count    xpath=//*[@text='The Taj Mahal']
    END
    Wait Until Page Contains Element       xpath=//*[@text='The Taj Mahal']
    Click Element    xpath=//*[@text='The Taj Mahal']

    Wait Until Page Contains Element    xpath=//*[contains(@text,'fifth ruler')]

    Element Should Contain Text    xpath=//*[contains(@text,'fifth ruler')]    Shah Jahan

    Sleep    5s
    [Teardown]      Close Application

