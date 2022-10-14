*** Settings ***
Library         SeleniumLibrary


*** Keywords ***
Input Text for Search
    Input Text      css:#gh-ac      anything
Click on Search Button
    Click Button    css:#gh-btn
Verify results on the search page
    Page Should Contain     results for anything
Filter Search result by condition
    Click Element      xpath://span[contains(text(),'Condition')]
    Sleep              2s
    Click Element      xpath:/html/body/div[8]/div[4]/div[1]/div/div[1]/div[2]/div[2]/span[1]/span/div/div[2]/span[1]
    Sleep              2s
Verify filter results
    Element Should Contain     xpath://*[@id="s0-51-12-6-3-4[0]-3-1-1-list"]/li/div/a/div       New
