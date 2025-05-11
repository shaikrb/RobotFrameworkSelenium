# Created by sara at 08-05-2025
*** Settings ***
Library    SeleniumLibrary
Library  ../ExternalKeywords/SeleniumExtKeywords.py

*** Variables ***
${Browser}  Chrome
${Url}  https://www.thetestingworld.com/testings

*** Test Cases ***
Enter text using external selenium
    Open Browser  ${Url}  ${Browser}
    Maximize Browser Window
    Enter Text    Hello
    