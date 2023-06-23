*** Settings ***
Library         SeleniumLibrary      timeout=5
Resource        resource.robot

*** Keywords ***
Login
    Open Browser                        ${urluat}           chrome
    Maximize Browser Window
    Element should be visible           ${email}
    Input Text                          ${email}            thanawin@atcreative.co.th
    Element should be visible           ${password}
    Input Text                          ${password}         !@#Win123
    Element should be visible           ${loginbutton}
    Click element                       ${loginbutton}

Click Shop
    sleep   10s
    Wait until element is visible       //*[normalize-space(text()) = 'Hamster Shop']
    Click Element                       //*[normalize-space(text()) = 'Hamstr Shop']
    sleep   10s
    
***Test Cases ***
Login Dev Env
    Login

Click shop
    Click Shop