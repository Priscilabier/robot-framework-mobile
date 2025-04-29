*** Settings ***
Resource    ../../../resources/common.robot
Resource    ../../../resources/pages/login_page.robot
Test Setup    Open Application
Test Teardown    Run Keywords
    ...    Take Screenshot On Failure
    ...    Close Application

*** Test Cases ***
Valid Login
    [Documentation]    Test login with valid credentials
    [Tags]    smoke    login
    Perform Login