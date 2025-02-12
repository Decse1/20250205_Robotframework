*** Settings ***
Library           Selenium2Library

*** Test Cases ***
login
    Open Browser    https://www.saucedemo.com/    firefox
    Input Text    //*[@id="user-name"]    standard_user
    Input Text    //*[@id="password"]    secret_sauce
    Click Button    //*[@id="login-button"]
    Click Button    //*[@id="react-burger-menu-btn"]
    Click Link    //*[@id="logout_sidebar_link"]
    Close Browser

Empty_username
    Open Browser    https://www.saucedemo.com/    firefox
    Input Text    //*[@id="user-name"]    ${EMPTY}
    Input Text    //*[@id="password"]    secret_sauce
    Click Button    //*[@id="login-button"]
    Element Should Contain    //*[@id="login_button_container"]    Epic sadface: Username is required

Empty_password
    Open Browser    https://www.saucedemo.com/    firefox
    Input Text    //*[@id="user-name"]    standard_user
    Input Text    //*[@id="password"]    ${EMPTY}
    Click Button    //*[@id="login-button"]
    Element Should Contain    //*[@id="login_button_container"]/div/form/div[3]    Epic sadface: Password is required
    Close Browser

Invalid_Username
    Open Browser    https://www.saucedemo.com/    firefox
    Input Text    //*[@id="user-name"]    tejfol
    Input Text    //*[@id="password"]    secret_sauce
    Click Button    //*[@id="login-button"]
    Element Should Contain    //*[@id="login_button_container"]    Epic sadface: Username and password do not match any user in this service

Invalid_Password
    Open Browser    https://www.saucedemo.com/    firefox
    Input Text    //*[@id="user-name"]    standard_user
    Input Text    //*[@id="password"]    tejfol
    Click Button    //*[@id="login-button"]
    Element Should Contain    //*[@id="login_button_container"]    Epic sadface: Username and password do not match any user in this service

Empry_Password&Username
    Open Browser    https://www.saucedemo.com/    firefox
    Input Text    //*[@id="user-name"]    ${EMPTY}
    Input Text    //*[@id="password"]    ${EMPTY}
    Click Button    //*[@id="login-button"]
    Element Should Contain    //*[@id="login_button_container"]    Epic sadface: Username is required
