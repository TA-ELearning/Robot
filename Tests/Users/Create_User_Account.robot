*** Settings ***
Documentation  Test Suit to validade User create account feature
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
${Valid_Password_Login}    password123
${Valid_Email_Create_Account}    test12347@email.com

${EMAIL_ACCOUNT}    test12347@email.com

${AccountFirstName}    Test Automation AccountFirstName
${AccountLastName}    Test Automation AccountLastName
${Gender}    Mrs
${Password}    password123
${day}    7
${Month}    10
${Year}    1999
${FirstName}    Test Automation FirstName
${LastName}    Test Automation LastName
${Company}    Test Automation Company
${Address}    Test Automation Address
${Address2}    Test Automation Address2
${City}    Test Automation City
${State}    Indiana
${Zip}    46183
${Country}    United States
${information}    Test Automation Test
${phone}     123456789
${Mobile}    123456789
${alias}    Test Automation

*** Test Cases ***
TC001 - Create user with success
    [Documentation]  This test create a user with success
    [tags]     Regression    SiteDemo    TC0001

    # Create Random email
    ${RANUSER}  Generate Random String  5  [LETTERS]
    ${EMAIL_ACCOUNT} =    Catenate     SEPARATOR=    ${RANUSER}    ${Valid_Email_Create_Account}

    Homepage.Popular Text Validation
    headerPage.Click Sign In

    SignInPage.Verify Sign In Page
    SignInPage.Input Email Create Account    ${EMAIL_ACCOUNT}
    SignInPage.Click button Create Account

    CreateAnAccountPage.Validade Create Account Page
    CreateAnAccountPage.Validate Email    ${EMAIL_ACCOUNT}
    CreateAnAccountPage.Select Gender Title    ${Gender}
    CreateAnAccountPage.Insert Account First Name    ${AccountFirstName}
    CreateAnAccountPage.Insert Account Last Name    ${AccountLastName}
    CreateAnAccountPage.Insert Password    ${Password}
    CreateAnAccountPage.Select Day of Birth    ${day}
    CreateAnAccountPage.Select Month of Birth    ${Month}
    CreateAnAccountPage.Select Year of Birth    ${Year}
    CreateAnAccountPage.Insert First name    ${FirstName}
    CreateAnAccountPage.Insert Last name    ${LastName}
    CreateAnAccountPage.Insert Company    ${Company}
    CreateAnAccountPage.Insert Address    ${Address}
    CreateAnAccountPage.Insert Address Line 2     ${Address2}
    CreateAnAccountPage.Insert City     ${City}
    CreateAnAccountPage.Select State    ${State}
    CreateAnAccountPage.Insert Zip Postal Code    ${Zip}
    CreateAnAccountPage.Insert Country    ${Country}
    CreateAnAccountPage.Insert Additional information    ${information}
    CreateAnAccountPage.Insert Home phone     ${phone}
    CreateAnAccountPage.Insert Mobile phone    ${Mobile}
    CreateAnAccountPage.Insert alias for future reference    ${alias}
    #Sleep    10
    CreateAnAccountPage.Click Button Register
    ProfilePage.Validation Create Account    ${AccountFirstName}    ${AccountLastName}

Test Case 2 - Verify invalid email address error
    [Tags]    Regression    SiteDemo    TC0002
    Homepage.Popular Text Validation
    HeaderPage.Click Sign In

    SignInPage.Verify Sign In Page
    SignInPage.Input Email login    test12347@email
    SignInPage.Click button Sign In
    SignInPage.Verify Message Failed    Invalid email address

Test Case 3 - Verify Valid email address
    [Tags]    Regression    SiteDemo    TC0003
    Homepage.Popular Text Validation
    HeaderPage.Click Sign In

    SignInPage.Verify Sign In Page
    SignInPage.Input Email login    ${EMAIL_ACCOUNT}
    SignInPage.Input password    ${Password}
    SignInPage.Click button Sign In
    ProfilePage.Validation Create Account    ${AccountFirstName}    ${AccountLastName}


TC004 - Verify Required Fields
    [Documentation]  This test create a user with success
                        #Steps to Automate:
                        #1. Open this url  http://automationpractice.com/index.php
                        #2. Click on sign in link.
                        #3. Enter email address and click Register button.
                        #4. Leave the mandatory fields (marked with *) blank and click Register button.
                        #5. Verify that error has been displayed for the mandatory fields.
    [tags]     Regression    SiteDemo    TC0004    Ignore

    # Create Random email
    ${RANUSER}  Generate Random String  5  [LETTERS]
    ${Valid_Email_Create_Account} =    Catenate     SEPARATOR=    ${RANUSER}    ${Valid_Email_Create_Account}

    #1. Open this url  http://automationpractice.com/index.php
    Homepage.Popular Text Validation

    #2. Click on sign in link.
    headerPage.Click Sign In
    SignInPage.Verify Sign In Page

    #3. Enter email address and click Register button.
    SignInPage.Input Email Create Account    ${EMAIL_ACCOUNT}
    SignInPage.Click button Create Account
    CreateAnAccountPage.Validade Create Account Page
    CreateAnAccountPage.Validate Email    ${EMAIL_ACCOUNT}

    #4. Leave the mandatory fields (marked with *) blank and click Register button.
    CreateAnAccountPage.Click Button Register

    #5. Verify that error has been displayed for the mandatory fields.
#    SignInPage.Verify Message Failed   You must register at least one phone number.
#    SignInPage.Verify Message Failed   lastname is required.
#    SignInPage.Verify Message Failed   firstname is required.
#    SignInPage.Verify Message Failed   passwd is required.
#    SignInPage.Verify Message Failed   address1 is required.
#    SignInPage.Verify Message Failed   city is required.
#    SignInPage.Verify Message Failed   The Zip/Postal code you've entered is invalid. It must follow this format: 00000
#    SignInPage.Verify Message Failed   This country requires you to choose a State.
