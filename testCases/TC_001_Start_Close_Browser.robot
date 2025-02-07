*** Settings ***
Library  SeleniumLibrary
Library  Collections

*** Variables ***
${Browser}  Chrome
${URL}  https://thetestingworld.com/testings/

*** Test Cases ***
TC_OO1_BROWSER_START_AND_CLOSE
    Open Browser  ${URL}  ${Browser}
    Maximize Browser Window
    #Set Selenium Speed  1 second
    Enter Details  testing  testing@xyz.com  abc123xyz
#    ${var}=     set variable  Hello World
#    ${list}=    create list     Hello   world   22  23.23
#    FOR     ${i}  IN  @{list}
#    log to console  ${i}
#    END
#    ${listLength}   get length  ${list}
#    ${listData}=    get from list  ${list}  1
#    log to console  ${var}
#    log to console  ${listLength}
#    log to console  ${listData}
#    FOR   ${i}    IN RANGE    1   10
#    log to console  ${i}
#    END
    #Click Link  id:nav_camper
    #Input Text  id:engineperformance  1.5BHP
    #Select Radio Button  Right Hand Drive  No
    #Click Element  xpath://label[normalize-space()='No']
    Capture Page Screenshot  D:/Learning/Projects/Automation/RobotFrameworkSelenium/screenshots/TC001.png
    Capture Element Screenshot    id:tab-content1  screenshots/TC001_Element.png
    Open Context Menu    xpath://span[contains(text(),'VIDEOS')]
    Double Click Element    xpath://a[text(),'Login']
    Mouse Down    xpath://a[text(),'Login']
    Mouse Up    xpath://a[text(),'Login']
    Mouse Over    xpath://a[text(),'Login']
    Press Key    xpath://input    hello
    Press Key    xpath://button    \\13
    Execute Javascript  window.scrollTO(0,1000)
    Close Browser
    ${key_word}=  set variable  log to console
    run keyword  ${key_word}  Hello Rasool
    ${condition}=  set variable  YES
    run keyword if  '${condition}'=='YES'  log to console  It is yes

*** Keywords ***
Enter Details
    [Arguments]  ${userName}  ${email}  ${password}
    Input Text  name:fld_username  ${userName}
    Input Text  name:fld_email  ${email}
    Input Text  name:fld_password  ${password}