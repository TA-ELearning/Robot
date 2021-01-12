*** Settings ***
Library    SeleniumLibrary
Variables  yourpage_webelements.py

*** Keywords ***
Validation Create Account
    [Arguments]  ${AccountFirstName}    ${AccountLastName}
    ${Fullname} =    Catenate     ${AccountFirstName}    ${AccountLastName}
    Wait Until Element Is Visible        ${HeaderPage_Bar_Username}
    Element Should Contain     ${HeaderPage_Bar_Username}    ${AccountFirstName}

