*** Settings ***
Library     AppiumLibrary


*** Test Cases ***
TC1
    &{dic}      Create Dictionary        buildName=k
    ...     projectName=k project
    ...     userName=abhikutty_pHvf6o
    ...     accessKey=WKnoyhFUBjzAzJuhsNLK


    Open Application    remote_url=http://hub.browserstack.com/wd/hub
    ...     platformName=ios
    ...     deviceName=iPhone 11 Pro
    ...     app=bs://3867af14ce5abc77ea340648d686ce492e5c71c7
    ...     platformVersion=13
    ...     bstack:options=${dic}
    Set Appium Timeout    20s
    Wait Until Page Contains Element    xpath=//XCUIElementTypeTextField[@name="test-Username"]
    Input Text    xpath=//XCUIElementTypeTextField[@name="test-Username"]    standard_user
    Wait Until Page Contains Element    xpath=//XCUIElementTypeSecureTextField[@name="test-Password"]
    Input Text    xpath=//XCUIElementTypeSecureTextField[@name="test-Password"]    secret_sauce
    Click Element    xpath=//XCUIElementTypeOther[@name="test-LOGIN"]

    Wait Until Page Contains Element    xpath=(//XCUIElementTypeOther[@name="test-ADD TO CART"])
    Click Element    xpath=(//XCUIElementTypeOther[@name="test-ADD TO CART"])
    Wait Until Page Contains Element    xpath=(//XCUIElementTypeOther[@name="test-ADD TO CART"])
    Click Element    xpath=(//XCUIElementTypeOther[@name="test-ADD TO CART"])
    Click Element    xpath=//XCUIElementTypeOther[@name="test-Cart"]
    Wait Until Page Contains Element        xpath=//XCUIElementTypeOther[@name="test-CHECKOUT"]
    Click Element       xpath=//XCUIElementTypeOther[@name="test-CHECKOUT"]
    Wait Until Page Contains Element        xpath=//XCUIElementTypeTextField[@name="test-First Name"]
    Input Text          xpath=//XCUIElementTypeTextField[@name="test-First Name"]       john
     Wait Until Page Contains Element       xpath=//XCUIElementTypeTextField[@name="test-Last Name"]
     Input Text         xpath=//XCUIElementTypeTextField[@name="test-Last Name"]        jo
     Wait Until Page Contains Element   xpath=//XCUIElementTypeTextField[@name="test-Zip/Postal Code"]
     Input Text     xpath=//XCUIElementTypeTextField[@name="test-Zip/Postal Code"]      100022
     Click Element      xpath=//XCUIElementTypeOther[@name="test-CONTINUE"]
     Should Contain         xpath=//XCUIElementTypeStaticText[@label='Payment Information']         Payment Information
     Should Contain    xpath=//XCUIElementTypeStaticText[@label='Shipping Information']      Shipping Information
    ${app_source}       Get Source
    Log    ${app_source}


    [Teardown]      Close Application