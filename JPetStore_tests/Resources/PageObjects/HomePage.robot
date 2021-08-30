*** Settings ***
Library  SeleniumLibrary
Variables   ../WebElements.py
*** Variables ***

*** Keywords ***

Click Category List Button
    [Arguments]  ${category_list_xpath}
    Press Keys  ${category_list_xpath}  RETURN