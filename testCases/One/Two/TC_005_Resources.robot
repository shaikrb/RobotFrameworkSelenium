*** Settings ***
Resource  ../../../resources/UtilsResources.robot
Documentation  This is learning suite

*** Variables ***

*** Test Cases ***
TC_005_resources
    [Documentation]  Testing the user defined keywords
    [Tags]  smoke
    ${Res}=  Start Browser and Maximize
    Log To Console    ${Res}
    Enter Details  testing  testing@xyz.com  abc123xyz

Selecting checkbox
    [Tags]  smoke  sanity
    Start Browser and Maximize
    Select Radio Button    add_type    office
