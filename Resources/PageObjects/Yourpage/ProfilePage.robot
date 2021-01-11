*** Settings ***
Library    SeleniumLibrary
Variables  yourpage_webelements.py

*** Keywords ***
Validation Create Account
    [Arguments]  ${AccountFirstName}    ${AccountLastName}
    ${Fullname} =    Catenate     ${AccountFirstName}    ${AccountLastName}
    Wait Until Element Is Visible        ${HeaderPage_Bar_Username}
    #${check} =  Get Text  //*[@id="header"]/div[2]/div/div/nav/div[1]/a/span
    Element Should Contain     ${HeaderPage_Bar_Username}    ${AccountFirstName}

