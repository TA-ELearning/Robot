*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${env}  qa
${browser}  chrome
&{url}  dev=http://dev.ebay.com  qa=http://automationpractice.com/index.php  prod=http://www.ebay.com

*** Keywords ***
Start TestCase
    Open Browser    ${url.${env}}    ${browser}
    Maximize Browser Window

Finish TestCase
    Close Browser