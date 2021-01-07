*** Settings ***
Library    SeleniumLibrary

*** Variables ***
#${search_text}  robot
@{search_text}  books  travel  robot  gifts

*** Keywords ***
Input Search Text and click Search
    [Arguments]  ${search_text}
    Input Text    //input[@id='gh-ac']    ${search_text}
    Click Button    //input[@id='gh-btn']

Click on Advanced Search link
    Click Element    //a[@id='gh-as-a']
    Element Should Be Visible    //b[contains(text(),'Pesquisa avançada')]