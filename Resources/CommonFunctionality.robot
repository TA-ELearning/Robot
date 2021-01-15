*** Settings ***
Library    SeleniumLibrary
Library    ScreenCapLibrary
Library    DatabaseLibrary

*** Variables ***
${env}  qa
${browser}  chrome
&{url}  dev=http://dev.ebay.com  qa=http://automationpractice.com/index.php  prod=http://www.ebay.com

${DBNAME}  sql7386783
${DBUSER}  sql7386783
${DBPASS}  NsezuAfqWf
${DBHOST}  sql7.freemysqlhosting.net
${dbPort}  3306

*** Keywords ***
Start TestCase
    #Start Video Recording    name=recording
    Open Browser    ${url.${env}}    ${browser}
    Maximize Browser Window
    Set Selenium Timeout    10

Start Database Connection
    Connect To Database  pymysql  ${DBNAME}  ${DBUSER}  ${DBPASS}  ${DBHOST}  ${DBPORT}

Finish Database Connection
    Disconnect From Database

Finish TestCase
    Close Browser
    #Stop All Video Recordings
