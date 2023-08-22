*** Settings ***
Documentation       Valiadte login functionalaity
Library     SeleniumLibrary
Library    Collections
Resource        ../TestData/resourse2.robot
Test Setup      Open Browser in new window
#Test Teardown       Close Browser Session


*** Variables ***


*** Test Cases ***
Validate no-commerse
    Log in to the application
    Fill the login details
    varify title of tab
    Create list of product
    Select the card       Apple MacBook Pro 13-inch

*** Keywords ***
Log in to the application
    Click Link    css:.ico-login
    Sleep    2
Fill the login details

    Input Text    id:Email    ${email}
    Input Text    id:Password    ${password}
    Click Button    css:.login-button
    Sleep    5


varify title of tab

    Element Text Should Be    xpath://strong[normalize-space()='Featured products']    Featured products
    Log To Console    Featured products

Create list of product
    @{expected}=    Create List     Build your own computer     Apple MacBook Pro 13-inch       HTC One M8 Android L 5.0 Lollipop       $25 Virtual Gift Card
    ${products}=    Get Text    css:.product-title
    ${actual_list}=     Create List
    FOR    ${element}    IN    ${products}
        Log    ${element}
        Append To List      ${actual_list}      ${element}
    END
    Lists Should Be Equal    ${expected}    ${actual_list}


Select the card
    [Arguments]     ${cardname}
    ${products}=    Get Text    css:.product-title
    #${products}=    Get WebElements    css:.product-title
    ${index}=       Set Variable    1
    FOR    ${element}    IN    ${products}
        Exit For Loop If    '${cardname}' ==  '${element}'
                ${index} =   Evaluate   ${index} +  1
    END
    Click Button    xpath:(//*[@class='add-info'])[2]/div[${index}]/button[1]