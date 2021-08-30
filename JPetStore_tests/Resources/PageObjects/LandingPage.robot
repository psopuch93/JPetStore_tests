*** Settings ***
Library  SeleniumLibrary
Resource  ./HomePage.robot
*** Variables ***


*** Keywords ***
Verify Browsing
    [Arguments]  ${SearchText}
    Page Should Contain  ${SearchText}
    Capture Page Screenshot  filename=Results_for_browsing_by_list_item_${SearchText}.png
