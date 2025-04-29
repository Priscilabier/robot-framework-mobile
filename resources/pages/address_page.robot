*** Settings ***
Resource    ../common.robot
Resource    ../locators.robot

*** Keywords ***
Navigate To Shipping Addresses
    [Documentation]    Navigates to the shipping addresses section
    Wait Until Element Is Visible    ${ACCOUNT_MENU_ICON}
    Click Element    ${ACCOUNT_MENU_ICON}
    Wait Until Element Is Visible    ${SHIPPING_ADDRESSES_BUTTON}
    Click Element    ${SHIPPING_ADDRESSES_BUTTON}

Add New Address
    [Documentation]    Initiates adding a new shipping address
    Wait Until Keyword Succeeds    3x    10s    Scroll To Add Address Section
    Click Element    ${ADD_NEW_ADDRESS_BUTTON}

Select Address Type
    [Arguments]    ${type}
    [Documentation]    Selects the address type
    Wait Until Element Is Visible    ${ADDRESS_TYPE_FIELD}    timeout=10s
    Click Element    ${ADDRESS_TYPE_FIELD}
    Wait Until Element Is Visible    ${${type}_OPTION}    timeout=10s
    Click Element    ${${type}_OPTION}

Input Street Address
    [Arguments]    ${address}
    [Documentation]    Inputs the street address
    Wait Until Element Is Visible    ${SHIPPING_ADDRESS_FIELD}    timeout=15s
    Input Text    ${SHIPPING_ADDRESS_FIELD}    ${address}

Input City
    [Arguments]    ${city}
    [Documentation]    Inputs the city
    Input Text    ${CITY_FIELD}    ${city}

Select State
    [Arguments]    ${state}
    [Documentation]    Selects the state
    Wait Until Element Is Visible    ${STATE_FIELD}    timeout=10s
    Click Element    ${STATE_FIELD}
    Wait Until Element Is Visible    ${${state}_OPTION}    timeout=10s
    Click Element    ${${state}_OPTION}

Input Zip Code
    [Arguments]    ${zip_code}
    [Documentation]    Inputs the zip code
    Input Text    ${ZIPCODE_FIELD}    ${zip_code}

Save Address
    [Documentation]    Saves the address
    Wait Until Element Is Visible    ${SAVE_ADDRESS_BUTTON}    timeout=10s
    Click Element    ${SAVE_ADDRESS_BUTTON}

Confirm Address Addition
    [Documentation]    Confirms the address addition
    Wait Until Element Is Visible    ${SUBMIT_CTA}    timeout=10s
    Click Element    ${SUBMIT_CTA}

Scroll To Add Address Section
    [Documentation]    Scrolls to the add address section
    Wait Until Page Contains Element    ${ADD_NEW_ADDRESS_BUTTON}    timeout=15s 