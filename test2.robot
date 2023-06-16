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
    Sleep   10 
    Wait Until Page Contains Element    //*[@class="cq-symbol-select-btn"]    10
    Click Element    //*[@class="cq-symbol-select-btn"]
    Sleep   10 
    Wait Until Page Contains Element    //*[@class="sc-mcd__item sc-mcd__item--1HZ10V "]    5
    Click Element    //*[@class="sc-mcd__item sc-mcd__item--1HZ10V "]
    Sleep   10 
    Wait Until Page Contains Element    //*[@data-testid="dt_contract_widget"]   10
    Click Element    //*[@data-testid="dt_contract_widget"]
    Sleep   10 
    Wait Until Page Contains Element    //button[@class="dc-btn dc-btn__toggle dc-button-menu__button dc-button-menu__button--active"]    10
    Click Element    //button[@class="dc-btn dc-btn__toggle dc-button-menu__button dc-button-menu__button--active"]
    Sleep   10 
    Wait Until Page Contains Element    //input[@value="5"]   10
    Click Element    //input[@value="5"]
    Sleep   10 
    Wait Until Page Contains Element    //button[@id="dc_stake_toggle_item"]   10
    Click Element    //button[@id="dc_stake_toggle_item"]
    Sleep   10 
    Wait Until Page Contains Element    //*[@name="amount"]   10
    Click Element    //*[@name="amount"]
    Sleep   10 
    Wait Until Page Contains Element    //button[@class="dc-btn dc-btn__toggle dc-button-menu__button"]   10
    Click Element    //button[@class="dc-btn dc-btn__toggle dc-button-menu__button"]
    Sleep   10 
    Wait Until Page Contains Element    //*[@class="dc-input__container"]   10
    Click Element    //*[@class="dc-input__container"]
    Sleep   10 
    Wait Until Page Contains Element    data-date="2023-06-11"   10
    Click Element    data-date="2023-06-11"
    # dah pilih tarikh 2 days later