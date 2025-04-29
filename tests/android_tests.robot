*** Settings ***
Resource          ../resources/common.robot
Resource          ../resources/locators.robot
Library           AppiumLibrary
Test Setup        Abrir Aplicativo
Test Teardown     Fechar Aplicativo

*** Test Cases ***
Teste de Login
    Fazer Login
    Wait Until Element Is Visible    ${WELCOME_MESSAGE}    timeout=20s

    
Add a new payment method (Credit Card)
    Fazer Login 
    Wait Until Element Is Visible    ${WELCOME_MESSAGE}    timeout=20s
    Wait Until Element Is Visible    ${ACCOUNT_MENU_ICON}
    Click Element    ${ACCOUNT_MENU_ICON}

    Wait Until Keyword Succeeds    3x    10s    Rolar E Verificar Seção De Pagamento
    Click Element    android=new UiSelector().text("Payment Methods") 
    Wait Until Keyword Succeeds    3x    10s    Rolar E Verificar Seção ADD Payment Method
    Click Element    android=new UiSelector().text("ADD PAYMENT METHOD")
    
    # Aguarda e preenche os campos do cartão
    Wait Until Element Is Visible    ${CARD_NUMBER_FIELD}    timeout=20s
    Input Text    ${CARD_NUMBER_FIELD}    4000000000000002

    # Seleciona mês
    Click Element    ${EXP_MONTH_WRAPPER}
    Wait Until Page Contains Element    android=new UiSelector().className("android.widget.CheckedTextView").text("01 - January")    timeout=10s
    Click Element    android=new UiSelector().className("android.widget.CheckedTextView").text("01 - January")
    
    # Seleciona ano
    Click Element    ${EXP_YEAR_WRAPPER}
    Wait Until Page Contains Element    android=new UiSelector().text("2030")
    Click Element    android=new UiSelector().text("2030")

    Wait Until Element Is Visible    ${CVV_FIELD}    timeout=15s
    Input Text    ${CVV_FIELD}    123
    
    Wait Until Element Is Visible    ${NAME_ON_CARD_FIELD}    timeout=10s
    Input Text    ${NAME_ON_CARD_FIELD}    John Doe
    
    Wait Until Element Is Visible    ${ZIPCODE_FIELD}    timeout=10s
    Input Text    ${ZIPCODE_FIELD}    10022
    
    Click Element    ${SAVE_PAYMENT_BUTTON}

    Wait Until Element Is Visible    ${GOT_IT_BUTTON}    timeout=30s
    Click Element    ${GOT_IT_BUTTON}


Add new shipping address
    Fazer Login 
    Wait Until Element Is Visible    ${WELCOME_MESSAGE}    timeout=20s
    Wait Until Element Is Visible    ${ACCOUNT_MENU_ICON}
    Click Element    ${ACCOUNT_MENU_ICON}
    # Rola até encontrar e clicar em Shipping Addresses 
    Wait Until Element Is Visible    ${SHIPPING_ADDRESSES_BUTTON}
    Click Element    ${SHIPPING_ADDRESSES_BUTTON}
    Wait Until Keyword Succeeds    3x    10s    Rolar E Verificar Seção ADD Shipping Address
    Click Element    ${ADD_NEW_ADDRESS_BUTTON}
    Wait Until Element Is Visible    ${ADDRESS_TYPE_FIELD}    timeout=10s
    Click Element    ${ADDRESS_TYPE_FIELD}
    Wait Until Element Is Visible    ${HOME_OPTION}    timeout=10s
    Click Element    ${HOME_OPTION}
    Wait Until Element Is Visible    ${SHIPPING_ADDRESS_FIELD}    timeout=15s
    Input Text    ${SHIPPING_ADDRESS_FIELD}    1072 S Genesee Ave
    Input Text    ${CITY_FIELD}    Los Angeles
    Wait Until Element Is Visible    ${STATE_FIELD}    timeout=10s
    Click Element    ${STATE_FIELD}
    Wait Until Element Is Visible    ${CA_OPTION}    timeout=10s
    Click Element    ${CA_OPTION}
    Input Text    ${ZIPCODE_FIELD}    90019
    Wait Until Element Is Visible    ${SAVE_ADDRESS_BUTTON}    timeout=10s
    Click Element    ${SAVE_ADDRESS_BUTTON}
    Wait Until Element Is Visible    ${SUBMIT_CTA}    timeout=10s
    Click Element    ${SUBMIT_CTA}

*** Keywords ***
Rolar E Verificar Seção De Pagamento
    [Documentation]    Rola a tela até encontrar a seção de pagamento
    Wait Until Page Contains Element    ${PAYMENT_SECTION}    timeout=15s
    
Rolar E Verificar Seção ADD Payment Method
    Wait Until Page Contains Element    ${ADD_PAYMENT_METHOD_SECTION}    timeout=15s

Rolar E Verificar Seção De Endereço
    Wait Until Page Contains Element    ${ADD_NEW_ADDRESS_BUTTON}    timeout=15s

Rolar E Verificar Seção ADD Shipping Address
    Wait Until Page Contains Element    ${ADD_NEW_ADDRESS_BUTTON}    timeout=15s

Selecionar Endereço Home
    Wait Until Element Is Visible    ${ADDRESS_TYPE_DROPDOWN}    timeout=10s
    Wait Until Element Is Visible    ${HOME_OPTION}    timeout=10s
    Click Element    ${HOME_OPTION}