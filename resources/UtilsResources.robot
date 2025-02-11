*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Browser}  Chrome
${URL}  https://thetestingworld.com/testings/

*** Keywords ***
Start Browser and Maximize
    [Documentation]  This keyword opens and maximizes the browser
    Open Browser  ${URL}  ${Browser}
    Maximize Browser Window

Close Browser Window
    ${title}=   Get Title
    Log To Console    ${title}
    Close Browser

Enter Details
    [Arguments]  ${userName}  ${email}  ${password}
    Input Text  name:fld_username  ${userName}
    Input Text  name:fld_email  ${email}
    Input Text  name:fld_password  ${password}