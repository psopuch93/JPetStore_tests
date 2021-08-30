*** Settings ***
Documentation  Basic Valid Login Functionality

Resource  ../../Resources/CommonFunctionality.robot
Resource  ../../Resources/PageObjects/HeaderPage.robot
Resource  ../../Resources/PageObjects/LoginPage.robot


*** Variables ***


*** Test Cases ***

Open Browser
    CommonFunctionality.Start TestCase

Enter The Store

    CommonFunctionality.Enter The Store

Verify basic user login functionality
    [Documentation]  This test case verifies the basic login functionality:
    [Tags]  Functional

    HeaderPage.Click Sign In Button
    LoginPage.Input Login and Password Data and Click Login
    LoginPage.Verify Login

Close Browser

    CommonFunctionality.Finish TestCase