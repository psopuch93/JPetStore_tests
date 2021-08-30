*** Settings ***
Library  SeleniumLibrary
Variables   ../WebElements.py
*** Variables ***

${CartEmpty}  Your cart is empty

*** Keywords ***

Check Cart Empty
    Click Element  ${CartHeaderButton}
    Page Should Contain  ${CartEmpty}
    Capture Element Screenshot  ${CartEmptyText}  filename=${CartEmpty}.png

Check Cart Contains
    [Arguments]  ${ItemName}
    Page Should Contain  ${ItemName}
    Capture Element Screenshot  ${CartContains}  filename=${ItemName}.png

Remove Item
    Click Element  ${CartRemoveButton}