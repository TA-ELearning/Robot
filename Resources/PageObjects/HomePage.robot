*** Settings ***
Library    SeleniumLibrary
Library    ScreenCapLibrary
Variables  yourpage_webelements.py

*** Keywords ***
Popular Text Validation
        Wait Until Element Is Visible     ${HomePage_PopularText}
        # Page Should Contain    ${HomePage_PopularText}
        Take Screenshot
