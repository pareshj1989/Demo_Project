*** Settings ***
Documentation       Valiadte login functionalaity
Library             SeleniumLibrary
Test Template          Validate login
Library             DataDriver      file=TestData/test.csv      encoding=utf_8


*** Variables ***


*** Test Cases ***
Login with user ${email} and ${password}


*** Keywords ***

Validate login
    [Arguments]         ${email}            ${password}
    Open Browser        https://dev.logibricks.com/     Chrome
    Sleep    5
    Element Text Should Be    xpath://div[@class='body1 text-bgColor-100 mt-4']    Welcome Back ! Please Enter your details
    Sleep    5
    Log To Console    Welcome Back ! Please Enter your details
    Sleep    5
    Input Text    xpath://input[@id='email']    ${email}
    Input Text    xpath://input[@id='password']    ${password}
    Click Button    xpath://button[@id='next']
    Sleep    5