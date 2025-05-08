# Created by sara at 08-05-2025
*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}  Chrome
${Url}  https://www.thetestingworld.com/testings

*** Keywords ***

*** Test Cases ***
Robot Fetch data of Web elements
    Open Browser  ${Url}  ${Browser}
    Maximize Browser Window
    ${PageTitle}=  Get Title
    Log    ${PageTitle}
    ${Speed}=  Get Selenium Speed
    Log    ${Speed}
    ${Value}=  Get Value    xpath://input[@type='submit']
    Log    ${Value}
    ${Text}=  Get Text    xpath://a[@class='displayPopup']
    Log    ${Text}
    Select From List By Index    name:sex   1
    ${SelectedIndex}=   Get Selected List Value    name:sex
    Log    ${SelectedIndex}
    ${SelectedValue}=   Get Selected List Label    name:sex
    Log    ${SelectedValue}
    ${AllLabels}=   Get List Items    name:sex
    Log    ${AllLabels}
    ${ActualUrl}=   Get Location
    Log    ${ActualUrl}
    #${Source}=  Get Source
    #Log    ${Source}
    ${Attr}=    Get Element Attribute    name:state    class
    Log    ${Attr}
    ${EleCount}=    Get Element Count    class:field
    Log    ${EleCount}
    