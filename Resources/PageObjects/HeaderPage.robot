*** Settings ***
Library    SeleniumLibrary
Variables  yourpage_webelements.py

*** Keywords ***
Click Sign In
        Click Element    ${HeaderPage_SignInLink}

Click Logo Icon
        Click Element    ${HeaderPage_HeaderLogo}
