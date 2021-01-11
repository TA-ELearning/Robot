*** Settings ***
Library    SeleniumLibrary
Resource  ./HeaderPage.robot

*** Variables ***
${search_results}    resultados para

*** Keywords ***
Verify Search Results
    [Arguments]  ${search_text}
    Page Should Contain    ${search_results} ${search_text}
    #To add a proof of sucess
    #Capture Page Screenshot
    Capture Element Screenshot    //h1[@class='srp-controls__count-heading']    EMBED

Select Product Condition
    Click Element    //body[1]/div[4]/div[6]/div[1]/div[1]/div[1]/div[2]/span[1]/button[1]
    Sleep   3
    Click Element    //body[1]/div[4]/div[6]/div[1]/div[1]/div[1]/div[2]/span[1]/span[1]/div[1]/a[2]/span[1]/span[1]
    Element Should Be Visible    //div[text()='Novos']
    Capture Page Screenshot
    Capture Element Screenshot    //div[text()='Novos']