*** Settings ***
Library   SeleniumLibrary
*** Variables ***
${url}                  https://www.saucedemo.com
${browser}              chrome
${username_txtbox}      id:user-name
${password_txtbox}      id:password
${login_btn}            id:login-button
${error_txt}            xpath://body/div[@id='root']/div[1]/div[2]/div[1]/div[1]/div[1]/form[1]/div[3]/h3[1]
*** Keywords ***
Start Testcase
    Open Browser                ${url}  ${browser}
    Maximize Browser Window
    Sleep                       2s
Finish Testcase
    Close Browser

#Input Both Wrong Values
#   Input Text      ${username_txtbox}      user
#   Input Text      ${password_txtbox}      password
#   Click Button    ${login_btn}
#   Sleep           2s
#   Element Should Contain      ${error_txt}        Epic sadface: Username and password do not match any user in this service

#Input Wrong Username And Correct Password
#   Input Text      ${username_txtbox}      user
#   Input Text      ${password_txtbox}      secret_sauce
#   Click Button    ${login_btn}
#   Sleep           2s
#   Element Should Contain      ${error_txt}        Epic sadface: Username and password do not match any user in this service

#Input Both Correct Values
#   Input Text      ${username_txtbox}      standard_user
#   Input Text      ${password_txtbox}      secret_sauce
#   Click Button    ${login_btn}
#   Sleep           2s
