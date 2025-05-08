# Created by sara at 08-05-2025
*** Settings ***
Resource    ../resources/UtilsResources.robot
Library     ../ExternalKeywords/UserKeywords.py

*** Keywords ***

*** Test Cases ***
Create Folder in FS
    Create Folder With Name  Temp

Concatenate Strings
    ${result}=  Concat Strings  Hello  World
    Log  ${result}