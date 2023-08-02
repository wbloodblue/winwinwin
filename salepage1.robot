*** Settings ***
Library         SeleniumLibrary      timeout=20
Resource        resource.robot

*** Keywords ***
Login
    Open Browser                        ${urlprod}           chrome
    #Maximize Browser Window
    Element should be visible           ${email}
    Input Text                          ${email}            thanawin@atcreative.co.th
    Element should be visible           ${password}
    Input Text                          ${password}         !@#Win123
    Element should be visible           ${loginbutton}
    Click element                       ${loginbutton}
    Wait Until Element Is Visible       ${winwinwinshop}

Click Shop
    sleep   4s
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
***Test Cases***
Login Dev Env
    Login

Click shop
    Click Shop

Open Upsale
    Upsale

Click Salepage
    Click Sale Page

Add Salepage
    Add Salepage

Confirm Order cod
    Confirm buy COD

Confirm Order tf
    Confirm buy transfer

Upsale transfer
    Upsale transfer

Upsale cod
    Upsale cod

Shipment1
    Shipment
    Packing

Shipment2
    Shipment
    Packing

Close upsale1
    Upsale