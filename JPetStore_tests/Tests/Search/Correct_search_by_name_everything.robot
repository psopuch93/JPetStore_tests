*** Settings ***
Documentation  Basic Search Functionality By Name

Resource  ../../Resources/CommonFunctionality.robot
Resource  ../../Resources/PageObjects/HeaderPage.robot
Resource  ../../Resources/PageObjects/SearchResultsPage.robot
*** Variables ***

@{PetsCategory}  Angelfish  Koi  Tiger Shark  Goldfish  Bulldog  Poodle  Dalmation  Golden Retriever  Labrador Retriever  Chihuahua  Rattlesnake  Iguana  Manx  Persia  Amazon Parrot  Finch


*** Test Cases ***
Open Browser

    CommonFunctionality.Start TestCase

Enter The Store

    CommonFunctionality.Enter The Store

Verify basic search functionality

    [Documentation]  This test case verifies the basic search by product name: Search-6
    [Tags]  Functional
    FOR  ${element}  IN  @{PetsCategory}
        HeaderPage.Input Search Text and Click Search  ${element}
        SearchResultsPage.Verify Search Results  ${element}
        Log  ${element}
    END


Close Browser

    CommonFunctionality.Finish TestCase
