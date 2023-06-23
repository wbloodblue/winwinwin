*** Settings ***
Library         SeleniumLibrary      timeout=20
Resource        resource.robot

*** Keywords ***
Login
    Open Browser                        ${urluat}           edge
    Maximize Browser Window
    Element should be visible           ${email}
    Input Text                          ${email}            thanawin@atcreative.co.th
    Element should be visible           ${password}
    Input Text                          ${password}         !@#Win123
    Element should be visible           ${loginbutton}
    Click element                       ${loginbutton}
    Wait Until Element Is Visible       ${winwinwinshop}

Click Shop
    sleep   2s
    Wait until element is visible       ${winwinwinshop}
    Click element                       ${winwinwinshop}
    sleep   5s
    Wait until element is visible       ${confirmbutton}
    click element                       ${confirmbutton}
    sleep   3s
    ${p} =   Get Element Count          ${confirmpack}
    Run Keyword If   ${p}>0             Click pack
    sleep   3s
    ${c} =   Get Element Count          ${announcementconfirm}
    Run Keyword If   ${c}>0             Click announcement

Click Order Menu
    Wait until element is visible       ${ordermenu}
    Click element                       ${ordermenu}
    Wait until element is visible       ${createorder}
    Click element                       ${createorder}
    sleep   2s

Add Order and Payment
    ${value}=  Evaluate  random.choice($random)  random
    Wait until element is visible       ${fromfacebook}
    Click element                       ${value}
    sleep   2s
    #Press Keys                          xpath=//body        \ue00f
    Click element                       ${addpayment}
    sleep   2s
    Wait Until Page Contains Element    ${uploadfield}
    sleep   2s
    Choose File                         ${uploadfield}          ${testpic}
    sleep   5s
    

***Test Cases ***
Login Dev Env
    Login

Click shop
    Click Shop

Click Order Menu
    Click Order Menu

Add Order and Payment
    Add Order and Payment