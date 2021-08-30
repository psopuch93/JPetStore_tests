*** Settings ***
Documentation  Basic Cart Add Item Functionality

Resource  ../../Resources/CommonFunctionality.robot
Resource  ../../Resources/PageObjects/HeaderPage.robot
Resource  ../../Resources/PageObjects/LandingPage.robot
Resource  ../../Resources/PageObjects/Cart.robot


*** Variables ***
${CartItem}  Fish
${Description}  Angelfish

*** Test Cases ***

Open Browser
    CommonFunctionality.Start TestCase

Enter The Store

    CommonFunctionality.Enter The Store

Verify user cart add item functionality
    [Documentation]  This test case verifies the cart add item functionality:
    [Tags]  Functional

    CommonFunctionality.Cart Header Entry
    Cart.Check Cart Empty
    HeaderPage.Click Quick Link  ${FishCategoryQuickLink}
    LandingPage.Click Product Id  ${ProductId}
    LandingPage.Click Item Id  ${ItemId}
    LandingPage.Click Add To Cart Button  ${CartAddButton}
    CommonFunctionality.Cart Header Entry
    Cart.Check Cart Contains  ${Description}

Close Browser

    CommonFunctionality.Finish TestCase