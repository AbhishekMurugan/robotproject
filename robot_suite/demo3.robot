*** Settings ***
Library    Collections
*** Variables ***
${BROWSER_NAME}     chrome
${MOBILE_NUM}       123456654
@{COLORS}       red     green       yellow
@{my_DETAILS}   name=abhi       role=trainer        mobile=8608332447
*** Test Cases ***
TC1
    [Documentation]     #details
    ${my_name}      Set Variable    abhi
    Log To Console    ${my_name}
TC2
   Log To Console    ${BROWSER_NAME}
TC3
    Log To Console    @{COLORS}[2]
    Log To Console    ${COLORS}
TC4
    ${item_count}   Get Length      ${COLORS}
    Log To Console    ${item_count}

TC5
    @{fruits}   Create List     apple       orange      mango
    Log To Console    ${fruits}[1]
    Append To List  ${fruits}       grapes
    Log To Console    ${fruits}
    Remove From List    ${fruits}    0
    Insert Into List    ${fruits}    1      pineapple
    Log To Console    ${fruits}
    ${count}        Get Length    ${fruits}
    Log To Console    ${count}
    Log To Console    ${fruits}

TC6
    FOR    ${i}    IN RANGE    1    11
        Log To Console    ${i}

    END


TC7
    @{fruits}   Create List     orange      mongo   apple   pineaqpple  pink
    FOR    ${i}    IN RANGE    0       5
        Log To Console    ${fruits}[${i}]
    END

TC8
    Log To Console    ${my_DETAILS}[moible]

TC9
    &{emp}      Create Dictionary     empo=101         empn=len
    Log To Console    ${emp}[empo]