*** Settings ***
Documentation  Test Suit to validade User login feature
    #Steps to Automate:
    #1. Open this url  http://automationpractice.com/index.php
    #2. Click on sign in link.
    #3. Enter invalid email address in the email box and click enter.
    #4. Validate that an error message is displaying saying "Invalid email address."

Library  String
Resource  ../../Resources/PageObjects/HeaderPage.robot
Resource  ../../Resources/PageObjects/HomePage.robot
Resource  ../../Resources/PageObjects/SignInPage.robot
Resource  ../../Resources/PageObjects/CreateAnAccountPage.robot
Resource  ../../Resources/PageObjects/ProfilePage.robot
Resource  ../../Resources/CommonFunctionality.robot

Test Setup      CommonFunctionality.Start TestCase
Test Teardown      CommonFunctionality.Finish TestCase

*** Variables ***
${Valid_Email_Login}    test12347@email.com
${Invalid_Email_Login}    test12347@email
${Valid_Password_Login}    password123

*** Test Cases ***
Test Case 2 - Verify invalid email address error
    [Tags]    Regression    SiteDemo    TC0002
    Homepage.Popular Text Validation
    HeaderPage.Click Sign In

    SignInPage.Verify Sign In Page
    SignInPage.Input Email login    test12347@email
    SignInPage.Click button Sign In
    SignInPage.Verify Message Failed    Invalid email address

