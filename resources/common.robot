*** Settings ***
Library    AppiumLibrary
Resource    ../resources/locators.robot
Library    ../loadEnv.py

*** Variables ***
${login}    %{login}
${secret}    %{secret}

${ANDROID_AUTOMATION_NAME}    UiAutomator2
${ANDROID_PLATFORM_NAME}      Android
${ANDROID_APP}               ${CURDIR}/test.apk    # Substitua pela activity real do seu app

*** Keywords ***
Abrir Aplicativo
    Log    Iniciando abertura do aplicativo...
    Open Application    http://localhost:4723/wd/hub
    ...    automationName=${ANDROID_AUTOMATION_NAME}
    ...    platformName=${ANDROID_PLATFORM_NAME}
    ...    deviceName=emulator-5554
    # ...    noReset=true
    ...    autoGrantPermissions=true
    ...    newCommandTimeout=2500
    ...    platformVersion=14
    ...    app=${ANDROID_APP}
    Log    Aplicativo aberto com sucesso
    Sleep    5s    # Dar tempo para o app iniciar completamente

Fazer Login
    Wait Until Element Is Visible    ${SIGN_IN_BUTTON}
    Click Element    ${SIGN_IN_BUTTON}
    Wait Until Element Is Visible    ${USERNAME_FIELD}    timeout=20s
    Click Element    ${USERNAME_FIELD}
    Input Text    ${USERNAME_FIELD}    ${email}
    Hide Keyboard
    Wait Until Element Is Visible    ${PASSWORD_FIELD}
    Click Element    ${PASSWORD_FIELD}
    Input Text    ${PASSWORD_FIELD}    ${password}
    Hide Keyboard
    Wait Until Element Is Visible    ${SIGN_IN_BUTTON}
    Click Element    ${SIGN_IN_BUTTON}

Fechar Aplicativo
    Close Application
