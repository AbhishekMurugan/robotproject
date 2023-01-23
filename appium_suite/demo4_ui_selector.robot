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
    Set Appium Timeout      20s
    Run Keyword And Ignore Error    Wait Until Page Contains Element   android=UiSelector().text("Dismiss")      30s
    Run Keyword And Ignore Error     Click Element      android=UiSelector().text("Dismiss")
    Wait Until Page Contains Element    android=UiSelector().description("Settings")    30s
    Click Element       android=UiSelector().description("Settings")
    Wait Until Page Contains Element        android=UiSelector().textContains("Sign in")    30s
    Click Element       android=UiSelector().textContains("Sign in")
    Wait Until Page Contains Element    android=UiSelector().textContains("Sign up with email")     30s
    Click Element   android=UiSelector().textContains("Sign up with email")
    Wait Until Page Contains Element        android=UiSelector().textContains("First name")     30s
    Click Element   android=UiSelector().textContains("First name")
    Input Text    android=UiSelector().textContains("First name")   abhi
    Wait Until Page Contains Element        android=UiSelector().textContains("Birthday")
    Click Element    android=UiSelector().textContains("Birthday")

    Wait Until Page Contains Element    android=UiSelector().resourceId("android:id/numberpicker_input")
    Click Element    android=UiSelector().resourceId("android:id/numberpicker_input")
    Clear Text    android=UiSelector().resourceId("android:id/numberpicker_input")
    Input Text    android=UiSelector().resourceId("android:id/numberpicker_input")    Dec

    Click Element    android=UiSelector().resourceId("android:id/numberpicker_input").instance(1)
    Clear Text    android=UiSelector().resourceId("android:id/numberpicker_input").instance(1)
    Input Text    android=UiSelector().resourceId("android:id/numberpicker_input").instance(1)     20
    Click Element    android=UiSelector().resourceId("android:id/numberpicker_input").instance(2)
    Clear Text    android=UiSelector().resourceId("android:id/numberpicker_input").instance(2)
    Input Text    android=UiSelector().resourceId("android:id/numberpicker_input").instance(2)     1999
    Click Element    android=UiSelector().textContains("OK")

    [Teardown]   Close Application