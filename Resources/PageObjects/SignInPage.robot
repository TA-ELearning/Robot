*** Settings ***
Library    SeleniumLibrary
Variables  yourpage_webelements.py

*** Keywords ***
Input Email login
    [Arguments]  ${email}
    Input Text    ${SignPage_EmailInputBox}    ${email}

Input password
    [Arguments]  ${password}
    Input Text    ${SignPage_PasswordInputBox}    ${password}

Click button Sign In
    Click Element    ${SignPage_SignInButton}

Input Email Create Account
    [Arguments]  ${email}
    Input Text    ${SignPage_CreateAccount_Email}    ${email}

Click button Create Account
    Click Element    ${SignPage_CreateAccount_Button}

Verify Sign In Page
    Wait Until Element Is Visible     ${SignPage_AuthenticationText}
    #To add a proof of sucess
    Capture Page Screenshot

Verify Message Failed
    [Arguments]  ${Msg}
    Wait Until Element Is Visible     //li[contains(text(),'${Msg}')]
    #To add a proof of sucess
    Capture Page Screenshot