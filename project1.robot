*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${email}    farhah+1000@besquare.com.my
${password}    Farhah_97
${profile_icon}    //a[@href="/account/personal-details"]
${api_token}    //a[@href="/account/api-token"]
${read_scope}    //*[@name="read"]
${trade_scope}    //*[@name="trade"]


# *** Test Cases ***
# API Token Page
#     login
#     profileIcon    


*** Test Cases ***

# *** Keywords ***
# Clear Input Field
#     [Arguments]    @{inputfield}
#     Press Keys    ${inputfield}    CTRL+a+BACKSPACE
login
    Open Browser    https://app.deriv.com/    chrome
    Set Window Size    1280    1024
    Sleep    5
    Wait Until Page Contains Element    dt_login_button        10
    Click Element    dt_login_button
    Wait Until Page Contains Element    txtEmail    10
    Input Text    txtEmail    ${email}
    Input Password    txtPass    ${password}
    Click Element    //button[@name="login"]
    # Profile Icon
    Wait Until Page Contains Element    ${profile_icon}    
    Wait Until Element Is Visible    ${profile_icon}    
    Click Element    ${profile_icon}
    # API token directory
    Wait Until Page Contains Element    ${api_token}    10    
    Wait Until Element Is Visible    ${api_token}    10    
    Click Element    ${api_token}
    # Read API Scope
    Wait Until Page Contains Element    ${read_scope}    10    
    Wait Until Element Is Visible    ${read_scope}    10    
    Click Element    ${read_scope}
    # Trade API Scope
    # Wait Until Page Contains Element    ${trade_scope}    10    
    # Wait Until Element Is Visible    ${trade_scope}    10    
    # Click Element    ${trade_scope}
