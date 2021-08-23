*** Settings ***
Documentation  Basic Search Functionality By Name

Resource  ../../Resources/CommonFunctionality.robot
Resource  ../../Resources/PageObjects/HeaderPage.robot
Resource  ../../Resources/PageObjects/SearchResultsPage.robot
*** Variables ***

*** Test Cases ***
Open Browser

    CommonFunctionality.Start TestCase

Enter The Store

    CommonFunctionality.Enter The Store

Verify basic search functionality
    [Documentation]  This test case verifies the basic search: Search-1
    [Tags]  Functional

    HeaderPage.Input Search Text and Click Search  Bulldog
    SearchResultsPage.Verify Search Results  Bulldog

Verify basic search functionality
    [Documentation]  This test case verifies the basic search: Search-1
    [Tags]  Functional

    HeaderPage.Input Search Text and Click Search  Poodle
    SearchResultsPage.Verify Search Results  Poodle

Verify basic search functionality
    [Documentation]  This test case verifies the basic search: Search-1
    [Tags]  Functional

    HeaderPage.Input Search Text and Click Search  Dalmation
    SearchResultsPage.Verify Search Results  Dalmation

Verify basic search functionality
    [Documentation]  This test case verifies the basic search: Search-1
    [Tags]  Functional

    HeaderPage.Input Search Text and Click Search  Golden Retriever
    SearchResultsPage.Verify Search Results  Golden Retriever

Verify basic search functionality
    [Documentation]  This test case verifies the basic search: Search-1
    [Tags]  Functional

    HeaderPage.Input Search Text and Click Search  Labrador Retriever
    SearchResultsPage.Verify Search Results  Labrador Retriever

Verify basic search functionality


    HeaderPage.Input Search Text and Click Search  Chihuahua
    SearchResultsPage.Verify Search Results  Chihuahua

    [Documentation]  This test case verifies the basic search: Search-1
    [Tags]  Functional


Close Browser

    CommonFunctionality.Finish TestCase
