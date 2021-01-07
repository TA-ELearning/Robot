*** Settings ***
Documentation    Suite description
Library    SeleniumLibrary

*** Variables ***


*** Test Cases ***
This is a sample test case
    [documentation]    Google test
    [tags]    regression

    Open Google Site
    Close Chrome Browser

This is another sample test case
    [documentation]    Google test
    [tags]    regression   Sapo

    Open SAPO Site
    Close Chrome Browser

*** Keywords ***
Open Google Site
    Open Browser   http://www.google.com   chrome

Open SAPO Site
    Open Browser   http://www.sapo.pt   chrome

Close Chrome Browser
    Close Browser