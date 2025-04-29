*** Settings ***
Resource    ../common.robot
Resource    ../locators.robot

*** Keywords ***
Input Username
    [Arguments]    ${username}
    Wait Until Element Is Visible    ${USERNAME_FIELD}    ${TIMEOUT}
    Input Text    ${USERNAME_FIELD}    ${username}

Input Password
    [Arguments]    ${password}
    Wait Until Element Is Visible    ${PASSWORD_FIELD}    ${TIMEOUT}
    Input Text    ${PASSWORD_FIELD}    ${password}

Click Login Button
    Wait Until Element Is Visible    ${LOGIN_BUTTON}    ${TIMEOUT}
    Click Element    ${LOGIN_BUTTON}

Verify Welcome Message
    Wait Until Element Is Visible    ${WELCOME_MESSAGE}    ${TIMEOUT}
    Element Should Be Visible    ${WELCOME_MESSAGE}

Verify Error Message
    Wait Until Element Is Visible    ${ERROR_MESSAGE}    ${TIMEOUT}
    Element Should Be Visible    ${ERROR_MESSAGE} 