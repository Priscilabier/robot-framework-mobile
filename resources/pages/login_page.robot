*** Settings ***
Resource    ../common.robot
Resource    ../locators.robot

*** Variables ***
${TIMEOUT}    20s

*** Keywords ***
Input Username
    [Arguments]    ${username}
    [Documentation]    Inputs the username/email in the login form
    Wait Until Element Is Visible    ${USERNAME_FIELD}    ${TIMEOUT}
    Click Element    ${USERNAME_FIELD}
    Input Text    ${USERNAME_FIELD}    ${username}
    Hide Keyboard

Input Password
    [Arguments]    ${password}
    [Documentation]    Inputs the password in the login form
    Wait Until Element Is Visible    ${PASSWORD_FIELD}    ${TIMEOUT}
    Click Element    ${PASSWORD_FIELD}
    Input Text    ${PASSWORD_FIELD}    ${password}
    Hide Keyboard

Click Sign In Button
    [Documentation]    Clicks the sign in button
    Wait Until Element Is Visible    ${SIGN_IN_BUTTON}    ${TIMEOUT}
    Click Element    ${SIGN_IN_BUTTON}

Verify Welcome Message
    [Documentation]    Verifies that the welcome message is visible after successful login
    Wait Until Element Is Visible    ${WELCOME_MESSAGE}    ${TIMEOUT}
    Element Should Be Visible    ${WELCOME_MESSAGE}

Verify Error Message
    [Documentation]    Verifies that the error message is visible after failed login
    Wait Until Element Is Visible    ${ERROR_MESSAGE}    ${TIMEOUT}
    Element Should Be Visible    ${ERROR_MESSAGE} 