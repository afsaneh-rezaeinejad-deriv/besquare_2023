*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${email}    farhah+107@besquare.com.my
${password}    Farhah_97
${profile_icon}    //a[@href="/account/personal-details"]
${close_account_directory}    //*[@id="/account/closing-account"]
${close_my_account}    //button[@class="dc-btn dc-btn--primary dc-btn__large closing-account__button--close-account"]
${checkbox_financial_priorities}    //input[@name="financial-priorities"]//following-sibling::span[@class="dc-checkbox__box"] 
${stop_trading}    //input[@name="stop-trading"]//following-sibling::span[@class="dc-checkbox__box"]
${not_interested}    //input[@name="not-interested"]//following-sibling::span[@class="dc-checkbox__box"]
${continue_btn}    //button[@class="dc-btn dc-btn__effect dc-btn--primary dc-btn__large"]
${go_back}    //span[text()="Go Back"]//parent::button[@class="dc-btn dc-btn__effect dc-btn--secondary dc-btn__large"]
${close_account}    //span[text()="Close account"]//parent::button[@class="dc-btn dc-btn__effect dc-btn--primary dc-btn__large"]


*** Test Cases ***
API Token Directory
    login
    Profile Icon
    Close account directory
    Close my account
    Checkbox 1 Financial Priorities
    Checkbox 2 Stop Trading
    Checkbox 3 Not Interested
    Continue 1 Close Account
    Go Back 1
    Continue 2 Close Account
    Close Account 1

*** Keywords ***
Clear Input Field
    [Arguments]    @{inputfield}
    Press Keys    ${inputfield}    CTRL+a+BACKSPACE

login
    Open Browser    https://app.deriv.com/    chrome
    Set Window Size    1280    1024
    Sleep    5
    Wait Until Page Contains Element    dt_login_button        10
    Click Element    dt_login_button
    Wait Until Page Contains Element    txtEmail    10
    Input Text    txtEmail    ${email}    5
    Input Password    txtPass    ${password}    5
    Click Element    //button[@name="login"]
Profile Icon
    Sleep    10
    Wait Until Page Contains Element    ${profile_icon}    10
    Wait Until Element Is Visible    ${profile_icon}    10
    Click Element    ${profile_icon}
Close account directory
    Wait Until Page Contains Element    ${close_account_directory}    10
    Wait Until Element Is Visible    ${close_account_directory}    10
    Click Element    ${close_account_directory}
Close my account
    Reload Page
    Wait Until Page Contains Element    ${close_my_account}    10
    Wait Until Element Is Visible    ${close_my_account}    10
    Click Element    ${close_my_account}
Checkbox 1 Financial Priorities
    Sleep    3
    Wait Until Page Contains Element    ${checkbox_financial_priorities}    10
    Wait Until Element Is Visible    ${checkbox_financial_priorities}    10
    Click Element    ${checkbox_financial_priorities}
Checkbox 2 Stop Trading
    Sleep    3
    Wait Until Page Contains Element    ${stop_trading}    10
    Wait Until Element Is Visible    ${stop_trading}    10
    Click Element    ${stop_trading}
Checkbox 3 Not Interested
    Sleep    3
    Wait Until Page Contains Element    ${not_interested}    10
    Wait Until Element Is Visible    ${not_interested}    10
    Click Element    ${not_interested}
Continue 1 Close Account
    Sleep    3
    Wait Until Page Contains Element    ${continue_btn}    10
    Wait Until Element Is Visible    ${continue_btn}    10
    Click Element    ${continue_btn}
Go Back 1
    Sleep    3
    Wait Until Page Contains Element    ${go_back}    10
    Wait Until Element Is Visible    ${go_back}    10
    Click Element    ${go_back}
Continue 2 Close Account
    Sleep    3
    Wait Until Page Contains Element    ${continue_btn}    10
    Wait Until Element Is Visible    ${continue_btn}    10
    Click Element    ${continue_btn}
Close Account 1
    Sleep    3
    Wait Until Page Contains Element    ${close_account}    10
    Wait Until Element Is Visible    ${close_account}    10
    Click Element    ${close_account}
