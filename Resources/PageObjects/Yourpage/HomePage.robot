*** Settings ***
Library    SeleniumLibrary
Variables  yourpage_webelements.py

*** Keywords ***
Popular Text Validation
        Wait Until Element Is Visible     ${HomePage_PopularText}
        # Page Should Contain    ${HomePage_PopularText}
        Capture Page Screenshot
