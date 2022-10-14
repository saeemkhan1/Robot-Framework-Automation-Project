*** Settings ***
Library     SeleniumLibrary
Resource    /Users/saeemkhan/pythonProject/RobotFrameworkProject/Resources/PageObjects/1_HeaderPage.robot

*** Variables ***
${page_contain}         results for
${element_contain}      New



*** Keywords ***
Verify Search Results
    Page Should Contain     ${page_contain} ${input_text}

Select Product Condition
    Click Element       xpath://body[1]/div[8]/div[4]/div[1]/div[2]/div[1]/div[2]/div[2]/span[1]/button[1]/span[1]
    Sleep               2s
    Click Element       xpath://body[1]/div[8]/div[4]/div[1]/div[2]/div[1]/div[2]/div[2]/span[1]/span[1]/div[1]/div[2]/span[1]
    Sleep               2s


Verify filter results
    Element Should Contain      xpath://body[1]/div[8]/div[4]/div[2]/div[1]/div[2]/ul[1]/li[1]/div[1]/div[1]/div[1]/div[1]/div[1]/ul[1]/li[1]/div[1]/a[1]/div[1]        ${element_contain}




