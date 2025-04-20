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

Teste de Cadastro de Endereço
    [Documentation]    Teste básico de cadastro de endereço no aplicativo
    Fazer Login
    
    