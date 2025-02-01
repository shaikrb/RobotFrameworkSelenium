*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Browser}  Chrome
${URL}  https://thetestingworld.com/testings/

*** Test Cases ***
TC_OO1_BROWSER_START_AND_CLOSE
    Open Browser  ${URL}  ${Browser}
    Maximize Browser Window
    Set Selenium Speed  1 second
    Enter Details  testing  testing@xyz.com  abc123xyz
    #Click Link  id:nav_camper
    #Input Text  id:engineperformance  1.5BHP
    #Select Radio Button  Right Hand Drive  No
    #Click Element  xpath://label[normalize-space()='No']
    Close Browser

*** Keywords ***
Enter Details
    [Arguments]  ${userName}  ${email}  ${password}
    Input Text  name:fld_username  ${userName}
    Input Text  name:fld_email  ${email}
    Input Text  name:fld_password  ${password}