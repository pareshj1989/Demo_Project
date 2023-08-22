*** Settings ***
Documentation       Valiadte login functionalaity
Library     SeleniumLibrary


*** Variables ***


*** Test Cases ***
Validate unsuccessful login functinality
    Open Browser in new window
    varify welcome message
    Fill the login details
    #varify error message
    get current url

*** Keywords ***
Open Browser in new window
    Open Browser        https://dev.logibricks.com/     Chrome
    #Create Webdriver    Firefox      executable_path=C:\Users\paresh.joshi\Downloads\geckodriver-v0.33.0-win32
    #Go To    https://dev.logibricks.com/
    Sleep    5
    
varify welcome message

    Element Text Should Be    xpath://div[@class='body1 text-bgColor-100 mt-4']    Welcome Back ! Please Enter your details
    Log To Console    Welcome Back ! Please Enter your details
    Sleep    5
    
Fill the login details

    Input Text    xpath://input[@id='email']    paresh+700@logibricks.in
    Input Text    xpath://input[@id='password']    Advik@007
    Click Button    xpath://button[@id='next']
    Sleep    5
    
#varify error message
    
    #Element Text Should Be    xpath://p[normalize-space()='Your password is incorrect']    Your password is incorrect
    #Log To Console    Your password is incorrect

get current url
    get