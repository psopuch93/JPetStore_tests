*** Settings ***
Library  SeleniumLibrary
Variables   ../WebElements.py
*** Variables ***
${SearchBox}  xpath://*[@id="SearchContent"]/form/input[1]
${SearchButton}  xpath://*[@id="SearchContent"]/form/input[2]
*** Keywords ***
Input Search Text and Click Search
    [Arguments]  ${SearchText}
    Input Text  ${SearchBox}  ${SearchText}
    Press Keys  ${SearchButton}  RETURN

