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
