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

    HeaderPage.Input Search Text and click Search  robot
    SearchResultsPage.Verify Search Results  robot

Verify Basic Search Functionality for books
    [Documentation]  This test verifies the basic search
    [tags]     Regression    eBay

    HeaderPage.Input Search Text and click Search  books
    SearchResultsPage.Verify Search Results  books
#Verify Advanced search functionality
#    [Documentation]  This test verifies the Advanced search
#    [tags]     Regression    eBay
#
#    HeaderPage.Click on Advanced Search link



