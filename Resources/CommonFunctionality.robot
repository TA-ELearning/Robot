*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${env}  prod
&{url}  dev=http://dev.ebay.com  qa=http://qa.ebay.com  prod=http://www.ebay.com

*** Keywords ***
Start TestCase
    Open Browser    ${url.${env}}    chrome
    Maximize Browser Window

Finish TestCase
    Close Browser