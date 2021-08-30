*** Settings ***
Library  SeleniumLibrary
Resource  ./HomePage.robot
*** Variables ***


*** Keywords ***
Verify Browsing
    [Arguments]  ${SearchText}
    Page Should Contain  ${SearchText}
    Capture Page Screenshot  filename=Results_for_browsing_by_list_item_${SearchText}.png

Click Product Id
    [Arguments]  ${ProductId}
    Click Element  ${ProductId}

Click Item Id
    [Arguments]  ${ItemId}
    Click Element  ${ItemId}

Click Add To Cart Button
    [Arguments]  ${CartAddButton}
    Click Element  ${CartAddButton}