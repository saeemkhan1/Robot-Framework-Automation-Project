*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${input_text}       mobile



*** Keywords ***
Input Search Text and Click Search
    Input Text      xpath://input[@id='gh-ac']      ${input_text}
    Click Button    xpath://input[@id='gh-btn']


Verify Advanced Search Link
    Click Element    xpath://a[@id='gh-as-a']


