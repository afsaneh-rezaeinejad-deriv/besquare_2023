*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${email}    farhah+1000@besquare.com.my
${password}    Farhah_97
${profile_icon}    //a[@href="/account/personal-details"]
${api_token}    //a[@href="/account/api-token"]
${read_scope}    //*[@name="read"]//parent::label
${trade_scope}    //*[@name="trade"]//parent::label
${token_name}    //input[@name="token_name"]//parent::label   


*** Test Cases ***
API Token Directory
    login
    Profile Icon
    API Token Page
    Read API Scope
    Trade API Scope
    API Token Name

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
    Wait Until Page Contains Element    ${profile_icon}    
    Wait Until Element Is Visible    ${profile_icon}    
    Click Element    ${profile_icon}
API Token Page
    # API token directory
    Wait Until Page Contains Element    ${api_token}    10    
    Wait Until Element Is Visible    ${api_token}    10    
    Click Element    ${api_token}
Read API Scope
    Wait Until Page Contains Element    ${read_scope}    10    
    Click Element    ${read_scope}
Trade API Scope
    Wait Until Page Contains Element    ${trade_scope}    10    
    Wait Until Element Is Visible    ${trade_scope}    10    
    Click Element    ${trade_scope}
API Token Name
    Wait Until Page Contains Element    ${token_name}    10    
    Wait Until Element Is Visible    ${token_name}    10    
    Click Element    ${token_name}