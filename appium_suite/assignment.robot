*** Settings ***
Library     AppiumLibrary

*** Test Cases ***
TC1
    [Documentation]     #working with native app
    Open Application    remote_url=http://localhost:4723/wd/hub
    ...     platformName=android
    ...     deviceName=vivo
    ...     appPackage=com.ril.ajio
    ...     appActivity=com.ril.ajio.launch.activity.SplashScreenActivity
    ...     noReset=true
    
    Set Appium Timeout    20s
