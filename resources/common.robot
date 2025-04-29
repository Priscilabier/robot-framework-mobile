*** Settings ***
Resource    ../config/appium_config.robot
Resource    ../config/device_config.robot
Resource    ./pages/login_page.robot
Library     AppiumLibrary
Library     OperatingSystem
Library     String
Library     ./utils/loadEnv.py

*** Variables ***
${ANDROID_APP}               ${CURDIR}/test.apk    # Replace with your actual app path
${TEST_EMAIL}                test@example.com    # Fallback test email
${TEST_PASSWORD}             password123    # Fallback test password
${LOGIN_EMAIL}              %{login=${TEST_EMAIL}}    # Get from .env or use fallback
${LOGIN_PASSWORD}           %{secret=${TEST_PASSWORD}}    # Get from .env or use fallback

*** Keywords ***
Initialize Application
    [Documentation]    Opens the mobile application with the specified configuration
    ...    This keyword initializes the Appium connection and launches the app
    Log    Starting application...
    Open Application    ${APPIUM_SERVER}
    ...    automationName=${AUTOMATION_NAME}
    ...    platformName=${PLATFORM_NAME}
    ...    deviceName=${DEVICE_NAME}
    ...    udid=${UDID}
    ...    platformVersion=${PLATFORM_VERSION}
    ...    autoGrantPermissions=${AUTO_GRANT_PERMISSIONS}
    ...    unicodeKeyboard=${UNICODE_KEYBOARD}
    ...    resetKeyboard=${RESET_KEYBOARD}
    ...    noReset=${NO_RESET}
    ...    fullReset=${FULL_RESET}
    ...    newCommandTimeout=${NEW_COMMAND_TIMEOUT}
    ...    deviceReadyTimeout=${DEVICE_READY_TIMEOUT}
    ...    appPackage=${APP_PACKAGE}
    ...    appActivity=${APP_ACTIVITY}
    ...    app=${ANDROID_APP}
    Log    Application opened successfully
    Sleep    5s    # Wait for the app to fully initialize

Close Application
    [Documentation]    Closes the mobile application
    Close Application

Take Screenshot On Failure
    [Documentation]    Takes a screenshot if the test fails
    Run Keyword If Test Failed    Capture Page Screenshot

Perform Login
    [Documentation]    Performs login with the provided credentials
    Wait Until Element Is Visible    ${SIGN_IN_BUTTON}
    Click Element    ${SIGN_IN_BUTTON}
    Input Username    ${LOGIN_EMAIL}
    Input Password    ${LOGIN_PASSWORD}
    Click Sign In Button

Fechar Aplicativo
    Close Application
