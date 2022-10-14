*** Settings ***
Documentation       Data Driven Failed Login Tests
Library             SeleniumLibrary
Library             DataDriver  /Users/saeemkhan/pythonProject/RobotFrameworkProject/Tests/TestData/TestData.csv
Resource            /Users/saeemkhan/pythonProject/RobotFrameworkProject/Resources/CommonSteps-LoginPage.robot
Suite Setup           CommonSteps-LoginPage.Start Testcase
Suite Teardown        CommonSteps-LoginPage.Finish Testcase
Test Template         Failed Login Scenarios

*** Test Cases ***
Verify Login Fails           ${username}     ${password}     ${error_msg}

*** Keywords ***
Failed Login Scenarios      # Keywords should match Test Template's Name
    [Arguments]     ${username}     ${password}     ${error_msg}        # Declare the Arguments to be passed
    # Test Steps for all the Failed Tests
    Input Text      ${username_txtbox}     ${username}
    Input Text      ${password_txtbox}     ${password}
    Click Button    ${login_btn}
    Sleep           2s
    Element Should Contain      ${error_txt}    ${error_msg}
