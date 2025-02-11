*** Settings ***
Resource  ../../../resources/UtilsResources.robot
Documentation  This is learning suite

*** Variables ***

*** Test Cases ***
TC_005_resources
    [Documentation]  Testing the user defined keywords
    [Setup]  Start Browser and Maximize
    [Teardown]  Close Browser Window
    Enter Details  testing  testing@xyz.com  abc123xyz
