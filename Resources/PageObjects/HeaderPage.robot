*** Settings ***
Library    SeleniumLibrary
Variables  Webelements.py

*** Variables ***
#${search_text}  robot
@{search_text}  books  travel  robot  gifts

*** Keywords ***
Input Search Text and click Search
    [Arguments]  ${search_text}
    Input Text    ${HeaderPage_SearchInputBox}    ${search_text}
    Click Button    ${HeaderPage_SearchButton}

Click on Advanced Search link
    Click Element    ${HeaderPage_AdvancedSearchLink}
    Element Should Be Visible    ${HeaderPage_AdvancedSearchText}

