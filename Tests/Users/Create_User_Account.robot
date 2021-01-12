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
    ${Valid_Email_Create_Account} =    Catenate     SEPARATOR=    ${RANUSER}    ${Valid_Email_Create_Account}

    Homepage.Popular Text Validation
    headerPage.Click Sign In

    SignInPage.Verify Sign In Page
    SignInPage.Input Email Create Account    ${Valid_Email_Create_Account}
    SignInPage.Click button Create Account

    CreateAnAccountPage.Validade Create Account Page
    CreateAnAccountPage.Validate Email    ${Valid_Email_Create_Account}
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





