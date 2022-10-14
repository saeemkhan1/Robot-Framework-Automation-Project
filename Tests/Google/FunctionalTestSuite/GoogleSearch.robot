*** Settings ***
Documentation   Launch Google Page Test
Library     SeleniumLibrary
*** Variables ***

*** Test Cases ***
Test to Launch Google Page
    [Documentation]  Launch Google Page Test
    Open Browser    https://www.google.com.au   chrome
    Maximize Browser Window
    Close Browser


*** Keywords ***


