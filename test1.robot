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
    Wait Until Page Contains Element    //*[@id="dropdown-display"]    10
    Click Element    //*[@id="dropdown-display"]
    Sleep   10 
    Wait Until Page Contains Element    //*[@id="demo"]   10
    Click Element    //*[@id="demo"]
    
