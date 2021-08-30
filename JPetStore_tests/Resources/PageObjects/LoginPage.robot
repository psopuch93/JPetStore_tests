*** Settings ***
Library  SeleniumLibrary
Variables   ../WebElements.py
*** Variables ***

${Login} =  sopuch-testowy
${Password} =  qa_testing
${Name} =  Pablo
${WelcomeText} =  Welcome ${Name}!

*** Keywords ***

Input Login and Password Data and Click Login
    Input Text  ${UsernameField}  ${Login}
    Input Text  ${PasswordField}  ${Password}
    Press Keys  ${Loginbutton}  RETURN


Verify Login
    Page Should Contain  ${WelcomeText}
    Capture Page Screenshot  filename=Results_for_${login}_account.png