*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
login
    Open Browser    https://app.deriv.com    chrome
    Set Window Size    1280    1024
    Wait Until Page Contains Element    dt_login_button        10
    Click Element    dt_login_button
    Wait Until Page Contains Element    txtEmail    10
    Input Text    txtEmail    email
    Input Password    txtPass    password
    Click Element    //button[@name="login"]
    Wait Until Page Contains Element    //*[@id="dropdown-display"]
    Click Element    //*[@id="dropdown-display"]
    Sleep   10 
    Wait Until Page Contains Element    //*[@id="demo"]    5
    Click Element    //*[@id="demo"]
    Wait Until Page Contains Element    //a[@href="/"]
    Click Element    //a[@href="/"]
    # # volatility 50 Index
    Sleep   10 
    Wait Until Page Contains Element    //*[@class="cq-symbol-select-btn"]    10
    Click Element    //*[@class="cq-symbol-select-btn"]
    Sleep   10 
    Wait Until Page Contains Element    //*[@class="sc-mcd__item sc-mcd__item--R_50 "]    10
    Click Element    //*[@class="sc-mcd__item sc-mcd__item--R_50 "]
    # contract type: multiplier
    Sleep   10 
    Wait Until Page Contains Element    //*[@data-testid="dt_contract_dropdown"]    10
    Click Element    //*[@data-testid="dt_contract_dropdown"]
    Sleep   10 
    Wait Until Page Contains Element    //*[@id="dt_contract_multiplier_item"]    10
    Click Element    //*[@id="dt_contract_multiplier_item"]

