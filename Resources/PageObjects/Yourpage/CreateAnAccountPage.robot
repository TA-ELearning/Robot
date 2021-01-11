*** Settings ***
Library    SeleniumLibrary
Variables  yourpage_webelements.py

*** Keywords ***
Validade Create Account Page
        Wait Until Element Is Visible     ${CreateAccountPage_Title}
        Capture Page Screenshot

Select Title Mr
    Click Element    ${CreateAccountPage_PersonalInformation_Title_Mr}
# *
Insert Account First Name
    [Arguments]  ${AccountFirstName}
    Input Text    ${CreateAccountPage_PersonalInformation_First_name}    ${AccountFirstName}
# *
Insert Account Last Name
    [Arguments]  ${AccountLastName}
    Input Text    ${CreateAccountPage_PersonalInformation_Last_name}    ${AccountLastName}

# *
Validate Email
    [Arguments]  ${Email}
    Wait Until Element Is Visible         ${CreateAccountPage_PersonalInformation_Email}
    Capture Element Screenshot    ${CreateAccountPage_PersonalInformation_Email}
    ${Email_Registry} =  Get Value    ${CreateAccountPage_PersonalInformation_Email}
    Should Be Equal As Strings    ${Email_Registry}    ${Email}

# *
Insert Password
    [Arguments]  ${Password}
    Input Text    ${CreateAccountPage_PersonalInformation_Password}    ${Password}

Select Day of Birth
    [Arguments]  ${day}
    #Click Element  ${CreateAccountPage_PersonalInformation_Date_of_Birth_Day}
    Select From List By Value  ${CreateAccountPage_PersonalInformation_Date_of_Birth_Day}    ${day}

Select Month of Birth
    [Arguments]  ${Month}
    Select From List By Value  ${CreateAccountPage_PersonalInformation_Date_of_Birth_Month}    ${Month}

Select Year of Birth
    [Arguments]  ${Year}
    Select From List By Value  ${CreateAccountPage_PersonalInformation_Date_of_Birth_Year}     ${Year}
# *
Insert First name
    [Arguments]  ${First}
    Input Text    ${CreateAccountPage_YourAddress_First_name}    ${First}
# *
Insert Last name
    [Arguments]  ${Last}
    Input Text    ${CreateAccountPage_YourAddress_Last_name}    ${Last}

Insert Company
    [Arguments]  ${Company}
    Input Text    ${CreateAccountPage_YourAddress_Company}    ${Company}

# *
Insert Address
    [Arguments]  ${Address}
    Input Text    ${CreateAccountPage_YourAddress_Address}    ${Address}

Insert Address Line 2
    [Arguments]  ${Address2}
    Input Text    ${CreateAccountPage_YourAddress_Address_Line_2}    ${Address2}
# *
Insert City
    [Arguments]  ${City}
    Input Text    ${CreateAccountPage_YourAddress_City}    ${City}
# *
Select State
    [Arguments]  ${State}
    Select From List By Label  ${CreateAccountPage_YourAddress_State}    ${State}
# *
Insert Zip Postal Code
    [Arguments]  ${Zip}
    Input Text    ${CreateAccountPage_YourAddress_ZipPostal_Code}    ${Zip}
# *
Insert Country
    [Arguments]  ${Country}
    Select From List By Label  ${CreateAccountPage_YourAddress_Country}    ${Country}

Insert Additional information
    [Arguments]  ${information}
    Input Text    ${CreateAccountPage_YourAddress_Additional_information}    ${information}

Insert Home phone
    [Arguments]  ${phone}
    Input Text    ${CreateAccountPage_YourAddress_Home_phone}    ${phone}

# *
Insert Mobile phone
    [Arguments]  ${Mobile}
    Input Text    ${CreateAccountPage_Your_Address_Mobile_phone}    ${Mobile}
# *
Insert alias for future reference
    [Arguments]  ${alias}
    Input Text    ${CreateAccountPage_YourAddress_alias}    ${alias}

Click Button Register
    Click Element    ${CreateAccountPage_Button_Register}