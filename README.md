# Robot Framework with Selenium

---

Robot framework is a generic test automation framework for acceptance testing.

It has easy-to-use tabular syntax utilizing keyword driven testing approach.

Libraries are implemented either in Java or Python.

### Advantages of Robot framework

---
1. Free
2. Simple tabular syntax
3. Fast automation with minimal code efforts
4. Detailed logs
5. Generic libraries and customization allowed with user defined libraries
6. Supports Web, Swing, Windows GUI, SSH, Telnet, Databases etc

### Libraries

---

####  Built-in
Robot framework come with few libraries bundled like telnet etc

#### External
We have a wide range of external libraries to work with. Please check below link

    https://robotframework.org/?tab=builtin#resources

## Installation

---
We can use pip to install Robotframework

pip install robotframework

Similarly, we can install any library for robot framework 

pip install --upgrade robotframework-seleniumlibrary

### Project structure

---
All Robot testcases are stored in the file with extension .robot

#### Main blocks of Robot testcase file

---
*** Settings ***

Settings section has the configuration of our testcase

*** Variables ***

User defined variables of the testcase
There should be only 2 spaces between variable name and value.

Example:``` ${Browser}  Chrome```

*** Test Cases ***\
Main testcases section\
There should be exact 2 spaces between keyword and arguments, and between argument and argument.\
Example ```Open Browser  \${Browser}  ${URL}```

*** Keywords ***\
To write any user defined keywords

## Element Locator

Locators are used to locate any element uniquely on a web page.

CSS Selectors:

By ID
```
css=#email       //Without using any html tag
css=input#email  //With html tag
```

By Class
```
css=input.inputtext
```
By any other attribute
```
css=tag[attributeName='Value']
```
Tag can be optional or * to denote any tag

By Combination
```
css=tag#id[attribute='Value']
css=tag.class[attribute='Value']
```

XPath Selectors:

By attribute
```
//tag[@attribute='Value']    // Single attribute
//tag[@attribute1='Value1' or @attribute2='Value2'] //Multiple attributes with OR
//tag[@attribute1='Value1' and @attribute2='Value2'] //Multiple attributes with AND
//*[@attribute='Value'] //Any tag with given attribute
//tag[@*='Value'] //Tag with any attribute with value
//tag[contains(@attribute,'Value')]
```

Using text
```
//tag[text()='Value']
//tag[contains(text(), 'Value')]
```
Using xpath axes to locate using hierarchy i.e. parent, grandparent, children etc

## Keywords

Reference - https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html

Generic syntax for any Robot statement is

<Keyword>  <arg1>  <arg2>

There should be 2 spaces between keyword and arg, arg and arg.
Most of the keywords are more than 1 word. Below are the most commonly used keywords in Selenium library.

Locator syntax is slightly different than what we usually use.\
It is like \<attribute>:\<value>

Example:

Input Text  id:engineperformance  1.5BHP

```
    Open Browser  ${URL}  ${Browser}
    Input Text  <locator>  <value>
    Click Link  <locator>
    Maximize Browser Window
    Clear Element Text  <locator>
    Select Radio Button  <group>  <value>
    Select Checkbox  <locator>
    Click Button  <locator>
    Select From List By Index  <locator>  <index value>   //It is zero indexed
    Select From List By Value  <locator>  <value>
    Select From List By Label  <locator>  <visibla label>
    Set Selenium Speed  <time>  //Adds waits after each step. Example 2seconds
    
```

## User defined keywords

We can define keywords for making steps reusable (similar to methods). Below is one example of keywords defined with arguments.

```
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
```
### Define and print variables:

**set variable** keyword is used to set the variable inside testcase section
**log to console** keyword is used to print the variable

```
${var}=     set variable  Hello world  //tab after = and 2 spaces after keyword
log to console  ${var}                  // 2 spaces after keyword
```

### Define and use a list:

List is part of standard library **Collection**

```
    ${var}=     set variable  Hello World
    ${list}=    create list     Hello   world   22  23.23
    ${listLength}   get length  ${list}
    ${listData}=    get from list  ${list}  1       //List is zero indexed
    log to console  ${var}
    log to console  ${listLength}
    log to console  ${listData}
```

### For loop:

```
    FOR   ${i}    IN RANGE    1   10
    log to console  ${i}
    END
```

Iterating through a list

```
    ${list}=    create list     Hello   world   22  23.23
    FOR     ${i}  IN  @{list}
    log to console  ${i}
    END
```

### RUN Keyword conditionally:

We can store the keywords in the variable and run them using **run keyword** keyword

```
    ${key_word}=  set variable  log to console
    run keyword  ${key_word}  Hello Rasool
```

We can also conditionally run a keyword by passing a condition for keyword **run keyword if**

```
    ${key_word}=  set variable  log to console
    run keyword  ${key_word}  Hello Rasool
    ${condition}=  set variable  YES
    run keyword if  '${condition}'=='YES'  log to console  It is yes
```

### Set and Get selenium speed:

Selenium speed is used to set the wait time between each selenium step following this instruction

```
    Open Browser  ${URL}  ${Browser}
    Maximize Browser Window
    Set Selenium Speed  1 second                        //Waits for 1 second after selenium step following this
    Click Link  id:nav_camper
    Input Text  id:engineperformance  1.5BHP
    Select Radio Button  Right Hand Drive  No
    Click Element  xpath://label[normalize-space()='No']
    Close Browser
```

Set Selenium Speed - to set the selenium speed
Get Selenium Speed - TO get the set selenium speed

Sleep keyword is used to wait in only one step

```
    Open Browser  ${URL}  ${Browser}
    Maximize Browser Window
    sleep  1 second                        //Waits for 1 second after only this step and continues exceution normally
    Click Link  id:nav_camper
    Input Text  id:engineperformance  1.5BHP
    Select Radio Button  Right Hand Drive  No
    Click Element  xpath://label[normalize-space()='No']
    Close Browser
```

### Set/Get Selenium timeout:

We can set explicit timeout for element visibility. Default is 5 seconds

```
set selenium timeout  5 seconds
get selenium timeout
```

### Implicit wait:

```
set selenium implicitly wait
```

### Take screenshot:

```
Capture Page Screenshot  <screenshot path> //To capture full page screenshot and save it in the provided path. Path can be absolute or relative to Project dir
Capture Element Screenshot  <locator>  <Screenshot path> //To capture screenshot of particular element
```

Note: ***The screenshot is captured only till the part visible on screen***

```
Close All Browsers - Closes all the browsers opened by Robot framework script
```

### Browser related keywords:

Go To - To open a different URL\
Go Back - To navigate back i.e. click Back button on the browser\
Get Location - To get the URL that is currently open

```
*** Variables ***
${Browser}  Chrome
${URL}  https://thetestingworld.com/testings/

*** Test Cases ***
TC_OO1_BROWSER_START_AND_CLOSE
    Open Browser  ${URL}  ${Browser}
    Go To  https://www.google.com
    ${URL1}=    Get Location            // Gets Currently open URL
    Go Back                             //Navigates back to original URL
```

### Execute Javascript at runtime:

***Execute Javascript*** keyword is used to perform javascript actions on browser. Below is an example to scroll the browser window using javascript

```
    Execute Javascript  window.scrollTo(0,1000)     // Scroll values in pixels
```

### Mouse actions:

Open Context Menu - Open context menu i.e. right click but takes locator as argument to right click on\
Double Click Element - Double clicks on the element by taking element locator as argument\
Mouse Down - Clicks mouse down button on the element locator argument provided\
Mouse Up - Clicks mouse up button on the element locator argument provided\
Mouse Over - Hovers the mouse pointer on the element with provided argument locator\

```
    Open Context Menu    xpath://span[contains(text(),'VIDEOS')]
    Double Click Element    xpath://a[text(),'Login']
    Mouse Down    xpath://a[text(),'Login']
    Mouse Up    xpath://a[text(),'Login']
    Mouse Over    xpath://a[text(),'Login']
```

### Keyboard operations:

Used to enter non-alpha numeric keys
***Press Key*** is used to enter keys

For Alpha numeric characters, we can directly use them. But for non text characters, we need to use ASCII value
When using ascii value, we need to give \\ before the value

```
    Press Key    xpath://input    hello
    Press Key    xpath://button    \\13
```

### Wait commands:

Wait commands can be used to wait till some condition is met. Some basic ones are

Wait Until Page Contains -              Waits until some text is displayed on the browser\
Wait Until Page Contains Element -      Waits until some element is loaded on the browser\
Wait Until Element Contains -           Waits until the given element contains some text\
Wait Until Element Visible -            Waits until given element is visible\
Wait Until Element Enable -             Waits until given element is enabled

Default timeout for these waits is 5 seconds. We can override this by using ***Set Selenium Timeout*** keyword
