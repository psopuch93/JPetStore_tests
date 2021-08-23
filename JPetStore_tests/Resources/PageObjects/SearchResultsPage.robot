*** Settings ***
Library  SeleniumLibrary
Resource  ./HeaderPage.robot
*** Variables ***


*** Keywords ***
Verify Search Results
    [Arguments]  ${SearchText}
    Page Should Contain  ${SearchText}
    Capture Page Screenshot  filename=Results_for_${SearchText}.png
