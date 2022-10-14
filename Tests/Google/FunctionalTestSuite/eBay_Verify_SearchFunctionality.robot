*** Settings ***
Documentation   eBay Basic Search Functionality
Test Setup      CommonSteps.Launch the Website
Test Teardown   CommonSteps.Browser is Closed
Resource        /Users/saeemkhan/pythonProject/RobotFrameworkProject/Resources/CommonSteps.robot
Resource        /Users/saeemkhan/pythonProject/RobotFrameworkProject/Resources/PageObjects/1_HeaderPage.robot
Resource        /Users/saeemkhan/pythonProject/RobotFrameworkProject/Resources/PageObjects/2_SearchResultPage.robot


*** Variables ***

*** Test Cases ***
Verify Basic Search Functionality
    [Documentation]  eBay Basic Search Functionality
    [Tags]  Functional

    # Verify Basic Search Result
    1_HeaderPage.Input Search Text and Click Search
    2_SearchResultPage.Verify Search Results

Verify Advanced Search Link
    [Documentation]  eBay Advanced Search Functionality
    [Tags]  Functional

    # Verify Advanced Search Link
    1_HeaderPage.Verify Advanced Search Link





