*** Settings ***
Documentation  Basic Valid Login Functionality

Resource  ../../Resources/CommonFunctionality.robot
Resource  ../../Resources/PageObjects/HomePage.robot
Resource  ../../Resources/PageObjects/LandingPage.robot
Variables  ../../Resources/WebElements.py


*** Variables ***

@{PetsCategory}  Fish  Dogs  Cats  Reptiles  Birds

*** Test Cases ***

Open Browser
    CommonFunctionality.Start TestCase

Enter The Store

    CommonFunctionality.Enter The Store

Verify catalog browsing every group by list
    [Documentation]  This test case verifies correct browsing by list items: Fish
    [Tags]  Functional

    FOR  ${element}  IN  @{PetsCategory}

    HomePage.Click Category List Button  ${${element}CategoryList}
    LandingPage.Verify Browsing  ${element}
    CommonFunctionality.Logo Entry


    END

Close Browser

    CommonFunctionality.Finish TestCase