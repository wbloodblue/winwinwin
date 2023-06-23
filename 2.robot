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
    Wait until element is visible       ${confirmbutton}
    click element                       ${confirmbutton}
    sleep   10s
    ${p} =   Get Element Count          ${confirmpack}
    Run Keyword If   ${p}>0             Click pack
    sleep   3s
    ${c} =   Get Element Count          ${announcementconfirm}
    Run Keyword If   ${c}>0             Click announcement

GPT
    Click element                       ${ordermenu}
    sleep   2s
    ${a} =  Element Should Contain  //*[@id="table-order"]/div/div/div/table/tbody/tr[1]  กำลังดำเนินการ
    Run Keyword If  '${a}'=='True'  Log  True  console=yes

***Test Cases ***
Login Dev Env
    Login

Click shop
    Click Shop

GPT
    GPT