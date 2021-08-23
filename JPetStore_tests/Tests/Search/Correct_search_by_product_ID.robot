*** Settings ***
Documentation  Basic Search Functionality By ID

Resource  ../../Resources/CommonFunctionality.robot
Resource  ../../Resources/PageObjects/HeaderPage.robot
Resource  ../../Resources/PageObjects/SearchResultsPage.robot

*** Variables ***

${ProductID}  FL-DLH-02

*** Test Cases ***

Open Browser
    CommonFunctionality.Start TestCase

Enter The Store

    CommonFunctionality.Enter The Store

Verify basic search functionality
    [Documentation]  This test case verifies the basic search: Search-1
    [Tags]  Functional

    HeaderPage.Input Search Text and Click Search  ${ProductID}
    SearchResultsPage.Verify Search Results  ${ProductID}

Close Browser

    CommonFunctionality.Finish TestCase