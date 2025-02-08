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
    Open Browser  https://www.google.com  ${Browser}  alias=google
    Maximize Browser Window
    Switch Browser    1
    ${var_url_1}=   Get Location
    Log To Console    ${var_url_1}
    Switch Browser    google
    ${var_url_1}=   Get Location
    Log To Console    ${var_url_1}