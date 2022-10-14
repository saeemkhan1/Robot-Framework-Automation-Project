*** Settings ***
Library         SeleniumLibrary

*** Keywords ***
Launch the Website
    Open Browser    https://www.ebay.com.au   chrome

Browser is Closed
    Close Browser