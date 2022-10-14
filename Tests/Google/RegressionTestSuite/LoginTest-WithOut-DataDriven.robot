*** Settings ***
Documentation       Login Tests
Library             SeleniumLibrary
Resource            /Users/saeemkhan/pythonProject/RobotFrameworkProject/Resources/CommonSteps-LoginPage.robot

Test Setup           Start Testcase
Test Teardown        Finish Testcase

*** Variables ***
${username_txtbox}      id:user-name
${password_txtbox}      id:password
${login_btn}            id:login-button
${error_txt}            xpath://body/div[@id='root']/div[1]/div[2]/div[1]/div[1]/div[1]/form[1]/div[3]/h3[1]

*** Test Cases ***

Verify Login Fails - Wrong Username and Wrong Password
    CommonSteps-LoginPage.Input Both Wrong Values

Verify Login Fails - Wrong Username and Correct Password
    CommonSteps-LoginPage.Input Wrong Username And Correct Password

Verify Login Pass - Correct Username and Correct Password
    CommonSteps-LoginPage.Input Both Correct Values