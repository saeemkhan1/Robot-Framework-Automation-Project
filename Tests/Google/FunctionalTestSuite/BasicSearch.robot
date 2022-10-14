*** Settings ***
Documentation   Basic Search Functionality
Test Setup      Launch the Website
Test Teardown   Browser is Closed
Resource        /Users/saeemkhan/pythonProject/RobotFrameworkProject/Resources/CommonSteps.robot
Resource        /Users/saeemkhan/pythonProject/RobotFrameworkProject/Resources/eBay_UserDefinedKeywords.robot

*** Variables ***

*** Test Cases ***
Verify Basic Search Functionality
    [Documentation]  Basic Search Functionality
    [Tags]  Functional

    # Verify Search Result
    Input Text for Search
    Click on Search Button
    Verify results on the search page
    Filter Search result by condition
    Verify filter results





