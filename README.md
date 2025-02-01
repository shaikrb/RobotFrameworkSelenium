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
