*** Settings ***
Documentation  Test Suit to validade Tables in a Database
            #1 - agents
            #2 - company
            #3 - customer
            #4 - daysorder
            #5 - despatch
            #6 - foods
            #7 - listofitem
            #8 - orders

Library  String
Resource  ../../Resources/CommonFunctionality.robot

Test Setup         Start Database Connection
Test Teardown      Finish Database Connection

*** Variables ***


*** Test Cases ***
Test Case DB0001 - Verify Table existence - agents
    [Tags]    Regression    DB0001    DB

    Table Must Exist     agents
    ${Test}=   Description    Select * from agents
    log    ${Test}

Test Case DB0002 - Verify Table existence - company
    [Tags]    Regression    DB0002    DB

    Table Must Exist     company

Test Case DB0003 - Verify Table existence - customer
    [Tags]    Regression    DB0003    DB

    Table Must Exist     customer

Test Case DB0004 - Verify Table existence - daysorder
    [Tags]    Regression    DB0004    DB

    Table Must Exist     daysorder

Test Case DB0005 - Verify Table existence - despatch
    [Tags]    Regression    DB0005    DB

    Table Must Exist     despatch

Test Case DB0006 - Verify Table existence - foods
    [Tags]    Regression    DB0006    DB

    Table Must Exist     foods

Test Case DB0007 - Verify Table existence - listofitem
    [Tags]    Regression    DB0007    DB

    Table Must Exist     listofitem

Test Case DB0008 - Verify Table existence - orders
    [Tags]    Regression    DB0008    DB

    Table Must Exist     orders



