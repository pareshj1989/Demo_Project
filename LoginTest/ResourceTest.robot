*** Settings ***
Documentation       Valiadte login functionalaity
Library     SeleniumLibrary
Resource        ../TestData/resourse.robot
Test Setup       Open Browser in new window
Test Teardown       Close Browser Session


*** Variables ***


*** Test Cases ***
Validate unsuccessful login functinality
    varify welcome message
    Fill the login details

*** Keywords ***

varify welcome message

    Element Text Should Be    xpath://div[@class='body1 text-bgColor-100 mt-4']    Welcome Back ! Please Enter your details
    Log To Console    Welcome Back ! Please Enter your details
    Sleep    5

Fill the login details

    Input Text    xpath://input[@id='email']    ${email}
    Input Text    xpath://input[@id='password']    ${password}
    Click Button    xpath://button[@id='next']
    Sleep    5


