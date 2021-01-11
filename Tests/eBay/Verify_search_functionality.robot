*** Settings ***
Documentation  Basic Search Functionality
Resource  ../../Resources/PageObjects/HeaderPage.robot
Resource  ../../Resources/PageObjects/SearchResultsPage.robot
Resource  ../../Resources/CommonFunctionality.robot

Test Setup      CommonFunctionality.Start TestCase
Test Teardown      CommonFunctionality.Finish TestCase

*** Variables ***


*** Test Cases ***
Verify Basic Search Functionality
    [Documentation]  This test verifies the basic search
    [tags]     Regression    eBay

    HeaderPage.Input Search Text and click Search  mobile
    SearchResultsPage.Verify Search Results  mobile
    #SearchResultsPage.Select Product Condition

Verify Basic Search Functionality for books
    [Documentation]  This test verifies the basic search
    [tags]     Regression    eBay

    HeaderPage.Input Search Text and click Search  books
    SearchResultsPage.Verify Search Results  books




