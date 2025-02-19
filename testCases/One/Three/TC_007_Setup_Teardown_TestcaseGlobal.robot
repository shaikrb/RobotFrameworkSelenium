*** Settings ***
Resource  ../../../resources/UtilsResources.robot
Documentation  This is learning suite. Setup and teardown runs before each testcase
Test Setup  Start Browser and Maximize
Library    DateTime
Test Teardown  Close Browser Window
*** Variables ***

*** Test Cases ***
TC_005_resources
    [Documentation]  Testing the user defined keywords
    Enter Details  testing  testing@xyz.com  abc123xyz
    ${today}=   Get Current Date
    ${parsedDate}=  Convert Date    ${today}  result_format=%Y%m%d%H%M
    ${name}=    Catenate  SEPARATOR=  CaseApp  ${parsedDate}
    Log To Console    ${today}
    Log To Console    ${parsedDate}
    Log To Console   ${name}
