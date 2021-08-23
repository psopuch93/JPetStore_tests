*** Settings ***

Library  SeleniumLibrary
Variables  ../Resources/WebElements.py

*** Variables ***

${URL}  https://petstore.octoperf.com
${Browser}  chrome

*** Keywords ***

Start TestCase
    Open Browser  ${URL}  ${Browser}
    Maximize Browser Window

Enter the Store
    Click Element  ${EnterStoreButton}

Finish TestCase
    Close Browser