*** Settings ***
Resource    ../common.robot
Resource    ../locators.robot

*** Keywords ***
Navigate To Payment Methods
    [Documentation]    Navigates to the payment methods section
    Wait Until Element Is Visible    ${ACCOUNT_MENU_ICON}
    Click Element    ${ACCOUNT_MENU_ICON}
    Wait Until Keyword Succeeds    3x    10s    Scroll To Payment Section
    Click Element    ${PAYMENT_SECTION}

Add New Payment Method
    [Documentation]    Initiates adding a new payment method
    Wait Until Keyword Succeeds    3x    10s    Scroll To Add Payment Section
    Click Element    ${ADD_PAYMENT_METHOD_SECTION}

Input Card Number
    [Arguments]    ${card_number}
    [Documentation]    Inputs the credit card number
    Wait Until Element Is Visible    ${CARD_NUMBER_FIELD}    timeout=20s
    Input Text    ${CARD_NUMBER_FIELD}    ${card_number}

Select Expiration Month
    [Arguments]    ${month}
    [Documentation]    Selects the expiration month
    Click Element    ${EXP_MONTH_WRAPPER}
    Wait Until Page Contains Element    android=new UiSelector().className("android.widget.CheckedTextView").text("01 - ${month}")    timeout=10s
    Click Element    android=new UiSelector().className("android.widget.CheckedTextView").text("01 - ${month}")

Select Expiration Year
    [Arguments]    ${year}
    [Documentation]    Selects the expiration year
    Click Element    ${EXP_YEAR_WRAPPER}
    Wait Until Page Contains Element    android=new UiSelector().text("${year}")
    Click Element    android=new UiSelector().text("${year}")

Input CVV
    [Arguments]    ${cvv}
    [Documentation]    Inputs the CVV number
    Wait Until Element Is Visible    ${CVV_FIELD}    timeout=15s
    Input Text    ${CVV_FIELD}    ${cvv}

Input Cardholder Name
    [Arguments]    ${name}
    [Documentation]    Inputs the cardholder name
    Wait Until Element Is Visible    ${NAME_ON_CARD_FIELD}    timeout=10s
    Input Text    ${NAME_ON_CARD_FIELD}    ${name}

Input Zip Code
    [Arguments]    ${zip_code}
    [Documentation]    Inputs the zip code
    Wait Until Element Is Visible    ${ZIPCODE_FIELD}    timeout=10s
    Input Text    ${ZIPCODE_FIELD}    ${zip_code}

Save Payment Method
    [Documentation]    Saves the payment method
    Click Element    ${SAVE_PAYMENT_BUTTON}

Confirm Payment Addition
    [Documentation]    Confirms the payment method addition
    Wait Until Element Is Visible    ${GOT_IT_BUTTON}    timeout=30s
    Click Element    ${GOT_IT_BUTTON}

Scroll To Payment Section
    [Documentation]    Scrolls to the payment section
    Wait Until Page Contains Element    ${PAYMENT_SECTION}    timeout=15s

Scroll To Add Payment Section
    [Documentation]    Scrolls to the add payment section
    Wait Until Page Contains Element    ${ADD_PAYMENT_METHOD_SECTION}    timeout=15s 