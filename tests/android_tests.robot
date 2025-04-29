*** Settings ***
Resource          ../resources/common.robot
Resource          ../resources/locators.robot
Resource          ../resources/pages/login_page.robot
Resource          ../resources/pages/payment_page.robot
Resource          ../resources/pages/address_page.robot
Library           AppiumLibrary
Test Setup        Initialize Application
Test Teardown     Close Application

*** Test Cases ***
Login Test
    [Documentation]    Test the login functionality
    Perform Login
    Wait Until Element Is Visible    ${WELCOME_MESSAGE}    timeout=20s

Add New Payment Method
    [Documentation]    Test adding a new credit card payment method
    [Tags]    payment
    Perform Login
    Wait Until Element Is Visible    ${WELCOME_MESSAGE}    timeout=20s
    
    # Navigate to payment section
    Navigate To Payment Methods
    Add New Payment Method
    
    # Fill credit card details
    Input Card Number    4000000000000002
    Select Expiration Month    January
    Select Expiration Year    2030
    Input CVV    123
    Input Cardholder Name    John Doe
    Input Zip Code    10022
    
    # Save payment method
    Save Payment Method
    Confirm Payment Addition

Add New Shipping Address
    [Documentation]    Test adding a new shipping address
    [Tags]    address
    Perform Login
    Wait Until Element Is Visible    ${WELCOME_MESSAGE}    timeout=20s
    
    # Navigate to address section
    Navigate To Shipping Addresses
    Add New Address
    
    # Fill address details
    Select Address Type    HOME
    Input Street Address    1072 S Genesee Ave
    Input City    Los Angeles
    Select State    CA
    Input Zip Code    90019
    
    # Save address
    Save Address
    Confirm Address Addition