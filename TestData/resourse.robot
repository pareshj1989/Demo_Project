*** Settings ***
Documentation       Valiadte login functionalaity
Library     SeleniumLibrary


*** Variables ***
${url}      https://dev.logibricks.com/
${email}    paresh+700@logibricks.in
${password}     Advik@007


*** Keywords ***
Open Browser in new window
    Open Browser        ${url}     Chrome
    #Create Webdriver    Firefox      executable_path=C:\Users\paresh.joshi\Downloads\geckodriver-v0.33.0-win32
    #Go To    https://dev.logibricks.com/
    Sleep    5

Close Browser Session
    Close Browser
`


