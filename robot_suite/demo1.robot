*** Settings ***
Library     DateTime



*** Test Cases ***
TC1
    Log To Console  message=Abhishek
    Log To Console  hello
    
TC2
    ${my_name}  Set Variable    Abhishek
    Log To Console    ${my_name}

TC3
    ${current data}     Get Current Date
    Log To Console    ${current data}
    
TC4 
    ${radius}   Set Variable    10
    ${squal}  Evaluate     ${radius} * ${radius} * 3.14
    Log To Console    ${squal}