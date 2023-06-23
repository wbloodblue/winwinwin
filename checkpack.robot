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
    sleep   2s
    Wait until element is visible       ${confirmbutton}
    click element                       ${confirmbutton}
    sleep   3s
    ${p} =   Get Element Count          ${confirmpack}
    Run Keyword If   ${p}>0             Click pack
    sleep   3s
    ${c} =   Get Element Count          ${announcementconfirm}
    Run Keyword If   ${c}>0             Click announcement

Click Shipment 1
    sleep   5s
    Wait until element is visible       ${shipmentmenu}
    Click element                       ${shipmentmenu}
    sleep   2s
    Wait until element is visible       ${packing}
    Click element                       ${packing}
    sleep   2s
    Wait until element is visible       ${packingcheckbox}
    Click element                       ${packingcheckbox}
    Wait until element is visible       ${print}
    Click element                       ${print}
    Wait until element is visible       ${printdetail}
    Click element                       ${printdetail}
    Wait until element is visible       ${firstdropcarrier}
    Click element                       ${firstdropcarrier}
    sleep   3s
    ${windows}=                         Get Window Handles
    Switch Window                       ${windows}[1]
    sleep   10s
    Capture Page Screenshot
    sleep   5s
    Close window
    sleep   2s
    Switch Window                       ${windows}[0]
    sleep   2s
    Wait until element is Visible       ${settingmenu}
    Click element                       ${settingmenu}
    sleep   2s
    Click element                       ${settingshipdetail}
    sleep   10s
    Mouse Over                          ${makedefault2}
    sleep   1s
    Click element                       ${makedefault2}
    sleep   3s
    Wait until element is visible       ${confirmbutton}
    Click element                       ${confirmbutton}

Click Shipment 2
    sleep   5s
    Wait until element is visible       ${shipmentmenu}
    Click element                       ${shipmentmenu}
    sleep   2s
    Wait until element is visible       ${packing}
    Click element                       ${packing}
    sleep   2s
    Wait until element is visible       ${packingcheckbox}
    Click element                       ${packingcheckbox}
    Wait until element is visible       ${print}
    Click element                       ${print}
    Wait until element is visible       ${printdetail}
    Click element                       ${printdetail}
    Wait until element is visible       ${firstdropcarrier}
    Click element                       ${firstdropcarrier}
    sleep   3s
    ${windows}=                         Get Window Handles
    Switch Window                       ${windows}[1]
    sleep   10s
    Capture Page Screenshot
    sleep   5s
    Close window
    sleep   2s
    Switch Window                       ${windows}[0]
    sleep   2s
    Wait until element is Visible       ${settingmenu}
    Click element                       ${settingmenu}
    sleep   2s
    Click element                       ${settingshipdetail}
    sleep   10s
    Mouse Over                          ${makedefault3}
    sleep   1s
    Click element                       ${makedefault3}
    sleep   3s
    Wait until element is visible       ${confirmbutton}
    Click element                       ${confirmbutton}
    sleep   10s

Click Shipment 3
    sleep   5s
    Wait until element is visible       ${shipmentmenu}
    Click element                       ${shipmentmenu}
    sleep   2s
    Wait until element is visible       ${packing}
    Click element                       ${packing}
    sleep   2s
    Wait until element is visible       ${packingcheckbox}
    Click element                       ${packingcheckbox}
    Wait until element is visible       ${print}
    Click element                       ${print}
    Wait until element is visible       ${printdetail}
    Click element                       ${printdetail}
    Wait until element is visible       ${firstdropcarrier}
    Click element                       ${firstdropcarrier}
    sleep   3s
    ${windows}=                         Get Window Handles
    Switch Window                       ${windows}[1]
    sleep   10s
    Capture Page Screenshot
    sleep   5s
    Close window
    sleep   2s
    Switch Window                       ${windows}[0]
    sleep   2s
    Wait until element is Visible       ${settingmenu}
    Click element                       ${settingmenu}
    sleep   2s
    Click element                       ${settingshipdetail}
    sleep   10s
    Mouse Over                          ${makedefault4}
    sleep   1s
    Click element                       ${makedefault4}
    sleep   3s
    Wait until element is visible       ${confirmbutton}
    Click element                       ${confirmbutton}
    sleep   10s

Click Shipment 4
    sleep   5s
    Wait until element is visible       ${shipmentmenu}
    Click element                       ${shipmentmenu}
    sleep   2s
    Wait until element is visible       ${packing}
    Click element                       ${packing}
    sleep   2s
    Wait until element is visible       ${packingcheckbox}
    Click element                       ${packingcheckbox}
    Wait until element is visible       ${print}
    Click element                       ${print}
    Wait until element is visible       ${printdetail}
    Click element                       ${printdetail}
    Wait until element is visible       ${firstdropcarrier}
    Click element                       ${firstdropcarrier}
    sleep   3s
    ${windows}=                         Get Window Handles
    Switch Window                       ${windows}[1]
    sleep   10s
    Capture Page Screenshot
    sleep   5s
    Close window
    sleep   2s
    Switch Window                       ${windows}[0]
    sleep   2s
    Wait until element is Visible       ${settingmenu}
    Click element                       ${settingmenu}
    sleep   2s
    Click element                       ${settingshipdetail}
    sleep   10s
    Mouse Over                          ${makedefault5}
    sleep   1s
    Click element                       ${makedefault5}
    sleep   3s
    Wait until element is visible       ${confirmbutton}
    Click element                       ${confirmbutton}
    sleep   10s

Click Shipment 5
    sleep   5s
    Wait until element is visible       ${shipmentmenu}
    Click element                       ${shipmentmenu}
    sleep   2s
    Wait until element is visible       ${packing}
    Click element                       ${packing}
    sleep   2s
    Wait until element is visible       ${packingcheckbox}
    Click element                       ${packingcheckbox}
    Wait until element is visible       ${print}
    Click element                       ${print}
    Wait until element is visible       ${printdetail}
    Click element                       ${printdetail}
    Wait until element is visible       ${firstdropcarrier}
    Click element                       ${firstdropcarrier}
    sleep   3s
    ${windows}=                         Get Window Handles
    Switch Window                       ${windows}[1]
    sleep   10s
    Capture Page Screenshot
    sleep   5s
    Close window
    sleep   2s
    Switch Window                       ${windows}[0]
    sleep   2s
    Wait until element is Visible       ${settingmenu}
    Click element                       ${settingmenu}
    sleep   2s
    Click element                       ${settingshipdetail}
    sleep   10s
    Mouse Over                          ${makedefault1}
    sleep   1s
    Click element                       ${makedefault1}
    sleep   3s
    Wait until element is visible       ${confirmbutton}
    Click element                       ${confirmbutton}
    sleep   10s


***Test Cases ***
Login UAT Env
    Login

Click shop
    Click Shop

Click Shipment 1
    Click Shipment 1
Click Shipment 2
    Click Shipment 2
Click Shipment 3
    Click Shipment 3
Click Shipment 4
    Click Shipment 4
Click Shipment 5
    Click Shipment 5