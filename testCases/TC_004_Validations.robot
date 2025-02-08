*** Settings ***
Library  SeleniumLibrary
Library  Collections

*** Variables ***
${Browser}  Chrome
${URL}  https://thetestingworld.com/testings/

*** Test Cases ***
TC_002_utils
    Open Browser  ${URL}  ${Browser}
    Maximize Browser Window
    Page Should Contain    Login
    Page Should Not Contain    Rasool
    Click Element    xpath://label[@for='tab2']
    Select Checkbox    name:terms
    Checkbox Should Be Selected    name:terms
    Unselect Checkbox    name:terms
    Checkbox Should Not Be Selected    name:terms