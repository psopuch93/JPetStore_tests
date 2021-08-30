*** Settings ***
Library  SeleniumLibrary
Variables   ../WebElements.py
*** Variables ***

*** Keywords ***

Click Sign In Button
    Press Keys  ${SignIn}  RETURN

Input Search Text and Click Search
    [Arguments]  ${SearchText}
    Input Text  ${SearchBox}  ${SearchText}
    Press Keys  ${SearchButton}  RETURN

Click Quick Link
    [Arguments]  ${CategoryQuickLink}
    Click Element  ${CategoryQuickLink}


