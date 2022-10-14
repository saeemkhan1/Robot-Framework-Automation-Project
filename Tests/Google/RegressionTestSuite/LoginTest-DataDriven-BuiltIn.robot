*** Settings ***
Documentation       BuiltIn Data Driven Login Tests
Library             SeleniumLibrary
Resource            /Users/saeemkhan/pythonProject/RobotFrameworkProject/Resources/CommonSteps-LoginPage.robot
Suite Setup           CommonSteps-LoginPage.Start Testcase
Suite Teardown        CommonSteps-LoginPage.Finish Testcase
Test Template         BuiltIn Failed Login Scenarios    # Have to add Test Template and Name
*** Test Cases ***
Verify Login Fails - Wrong Username and Wrong Password            bad_username      password123        Epic sadface: Username and password do not match any user in this service
Verify Login Fails - Wrong Username and Correct Password          wrong_username    password321        Epic sadface: Username and password do not match any user in this service
Verify Login Fails - Correct Username and Wrong Password          standard_user     PassPass           Epic sadface: Username and password do not match any user in this service
Verify Login Fails - Locked User and Correct Password             locked_out_user   secret_sauce       Epic sadface: Sorry, this user has been locked out.

*** Keywords ***
BuiltIn Failed Login Scenarios      # Keywords should match Test Template's Name
    [Arguments]     ${username}     ${password}     ${error_msg}        # Declare the Arguments to be passed
    # Test Steps for all the Failed Tests
    Input Text      ${username_txtbox}     ${username}
    Input Text      ${password_txtbox}     ${password}
    Click Button    ${login_btn}
    Sleep           2s
    Element Should Contain      ${error_txt}    ${error_msg}
