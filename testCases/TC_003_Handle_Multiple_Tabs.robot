*** Settings ***
Library  SeleniumLibrary
Library  Collections

*** Variables ***
${Browser}  Chrome
${URL}  https://robotframework.org/

*** Test Cases ***
TC_002_utils
    Open Browser  ${URL}  ${Browser}
    Maximize Browser Window
    Click Element  //a[normalize-space()='creating test libraries']
    Switch Window  Robot Framework
    ${URL1}=    Get Location
    Switch Window  Robot Framework User Guide
    ${URL2}=    Get Location
    Log To Console    ${URL1}
    Log To Console    ${URL2}