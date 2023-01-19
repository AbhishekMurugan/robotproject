*** Comments ***
*** Settings ***
Library     OperatingSystem
Library    Collections
Library    String
*** Test Cases ***

TC1
    ${files}    List Files In Directory    path=C:${/}Users${/}40032433${/}Robot_project1${/}robot_suite${/}
    #Log To Console    ${files}
    Log List    ${files}
    
    Log To Console    ${files}[1]

TC2
    ${name}     Set Variable    robot framework session
    Log To Console    ${name}
    ${na}   Convert To Upper Case   ${name}
    Log To Console    ${na}
    ${final_str}    Remove String    ${na}    SESSION
    Log To Console    ${final_str}


TC3
    ${num1}     Set Variable       $200,100
    ${num2}     Set Variable        $200
    ${a}      Remove String    ${num1}      $
    ${b}      Remove String    ${num2}      $
    ${c}      Evaluate    ${a}+${b}
    Log To Console    ${a}



