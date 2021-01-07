*** Settings ***
Documentation    Suite description
Library    SeleniumLibrary
Library    SeleniumLibrary
Library    SeleniumLibrary

*** Variables ***


*** Test Cases ***
This is a sample test case
    [documentation]    Google test
    [Tags]    regression

    Open Browser   http://www.google.com   chrome
    Close Browser

*** Keywords ***

