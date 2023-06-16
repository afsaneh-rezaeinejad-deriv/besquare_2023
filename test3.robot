*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${email}    email
${password}    password
${underlying}    //*[@class="sc-mcd__item sc-mcd__item--frxAUDUSD "]
${contracType}    Lower
${duration}    2days
${barrier}    default
${payout}    15.50




*** Test Cases ***
Buy Lower Contract
    login
    underlying    
    contract
    duration
    barrier
    payout

*** Keywords ***
Clear Input Field
    [Arguments]    @{inputfield}
    Press Keys    ${inputfield}    CTRL+a+BACKSPACE
login
    Open Browser    https://app.deriv.com    chrome
    Set Window Size    1280    1024
    Wait Until Page Contains Element    dt_login_button        10
    Click Element    dt_login_button
    Wait Until Page Contains Element    txtEmail    10
    Input Text    txtEmail    ${email}
    Input Password    txtPass    ${password}
    Click Element    //button[@name="login"]
    Sleep   10 
    Wait Until Page Contains Element    //*[@id="dropdown-display"]    5
    Click Element    //*[@id="dropdown-display"]
    Wait Until Page Contains Element    //*[@id="demo"]    5
    Wait Until Element Is Visible    //*[@id="demo"]    5
    Click Element    //*[@id="demo"]
    Wait Until Page Contains Element    //a[@href="/"]
    Click Element    //a[@href="/"]
underlying
    Wait Until Page Contains Element    //*[@class="cq-symbol-select-btn"]    10
    Wait Until Element Is Visible    //*[@class="cq-symbol-select-btn"]    10
    Click Element    //*[@class="cq-symbol-select-btn"]
    # AUD/USD
    Sleep   10 
    Wait Until Page Contains Element    ${underlying}    10
    Click Element    ${underlying}
contract
    Sleep   10 
    Wait Until Page Contains Element    //*[@data-testid="dt_contract_dropdown"]    10
    Click Element    //*[@data-testid="dt_contract_dropdown"]
    Sleep   10 
    Wait Until Page Contains Element    //*[@id="dt_contract_high_low_item"]    10
    Click Element    //*[@id="dt_contract_high_low_item"]
    Sleep   10 
    Wait Until Page Contains Element    //button[@id="dc_duration_toggle_item"]    10
    Click Element    //button[@id="dc_duration_toggle_item"]
duration
    Sleep   10 
    Wait Until Page Contains Element    //*[@class="dc-input__container"]    10
    Click Element    //*[@class="dc-input__container"]
barrier
    Sleep   10 
    Wait Until Page Contains Element    //*[@class="trade-container__fieldset trade-container__barriers"]    10
    Click Element    //*[@class="trade-container__fieldset trade-container__barriers"]
    Sleep   10 
    Wait Until Page Contains Element    //*[@name="barrier_1"]    10
    Click Element    //*[@name="barrier_1"]
payout
    Sleep   10 
    Wait Until Page Contains Element    //button[@id="dc_payout_toggle_item"]    10
    Click Element    //button[@id="dc_payout_toggle_item"]
    Clear Input Field    //*[@class="trade-container__currency"]
    Input Text    //*[@class="trade-container__currency"]    ${payout}


