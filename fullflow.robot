*** Settings ***
Library         SeleniumLibrary      timeout=20
Resource        resource.robot

*** Keywords ***
Login
    Open Browser                        ${urlprod}          chrome
    #Maximize Browser Window
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

Click Order Menu
    Wait until element is visible       ${ordermenu}
    Click element                       ${ordermenu}
    Wait until element is visible       ${createorder}
    Click element                       ${createorder}
    sleep   2s

Add Order 1
    ${value}=  Evaluate  random.choice($random)  random
    Wait until element is visible       ${fromfacebook}
    Click element                       ${value}
    sleep   2s
    Wait until element is visible       ${userbox}
    Click element                       ${userbox}
    sleep   2s
    Click element                       ${firstuser}
    Press Keys                           xpath=//body        \ue00f
    sleep   2s
    Click element                       ${selectproduct}
    Wait until element is visible       ${basicproduct}
    Click element                       ${basicproduct}
    Wait until element is visible       ${firstproduct}
    Click element                       ${firstproduct}
    Wait until element is visible       ${confirmselectproduct}
    Click element                       ${confirmselectproduct}
    Press Keys                           xpath=//body        \ue00e
    sleep   2s
    Wait until element is visible       ${addpayment}
    Click element                       ${addpayment}
    sleep   2s
    Wait Until Page Contains Element    ${uploadfield}
    sleep   2s
    Choose File                         ${uploadfield}          ${testpic2}
    sleep   1s
    Press Keys                           xpath=//body        \ue00f
    sleep   1s
    Wait until element is visible       ${paymentcompleted}
    Click element                       ${paymentcompleted}
    Wait until element is visible       ${confirmandreorder}
    Click element                       ${confirmandreorder}
    sleep   2s
Add Order 2
    sleep   2s
    ${value}=  Evaluate  random.choice($random)  random
    Wait until element is visible       ${fromfacebook}
    Click element                       ${value}
    sleep   2s
    Wait until element is visible       ${userbox}
    Click element                       ${userbox}
    sleep   2s
    Wait until element is visible       ${firstuser}
    Click element                       ${firstuser}
    Press Keys                          xpath=//body        \ue00f
    sleep   3s
    Wait until element is visible       ${searchproduct}
    Click element                       ${searchproduct}
    sleep   1s
    Wait until element is visible       ${searchresult1}
    Click element                       ${searchresult1}
    sleep   2s
    Wait until element is visible       ${confirmandreorder}
    Click element                       ${confirmandreorder}
    sleep   2s
Add Order 3
    sleep   2s
    ${value}=  Evaluate  random.choice($random)  random
    Wait until element is visible       ${fromfacebook}
    Click element                       ${value}
    sleep   2s
    Wait until element is visible       ${userbox}
    Click element                       ${userbox}
    sleep   2s
    Wait until element is visible       ${firstuser}
    Click element                       ${firstuser}
    sleep   1s
    Wait until element is visible       ${cod}
    Click element                       ${cod}
    sleep   1s
    Wait until element is visible       ${checkboxcod}
    Click element                       ${checkboxcod}
    Press Keys                          xpath=//body        \ue00f
    sleep   3s
    Wait until element is visible       ${selectproduct}
    Click element                       ${selectproduct}
    Wait until element is visible       ${basicproduct}
    Click element                       ${basicproduct}
    Wait until element is visible       ${firstproduct}
    Click element                       ${firstproduct}
    sleep   2s
    Wait until element is visible       ${confirmselectproduct}
    Click element                       ${confirmselectproduct}
    sleep   2s
    Wait until element is visible       ${confirmandreorder}
    Click element                       ${confirmandreorder}
    sleep   2s
Add Order 4
    sleep   2s
    ${value}=  Evaluate  random.choice($random)  random
    Wait until element is visible       ${fromfacebook}
    Click element                       ${value}
    sleep   2s
    Wait until element is visible       ${userbox}
    Click element                       ${userbox}
    sleep   2s
    Wait until element is visible       ${firstuser}
    Click element                       ${firstuser}
    sleep   1s
    Wait until element is visible       ${cod}
    Click element                       ${cod}
    sleep   1s
    Press Keys                          xpath=//body        \ue00f
    sleep   3s
    Wait until element is visible       ${selectproduct}
    Click element                       ${selectproduct}
    Wait until element is visible       ${basicproduct}
    Click element                       ${basicproduct}
    Wait until element is visible       ${firstproduct}
    Click element                       ${firstproduct}
    sleep   2s
    Wait until element is visible       ${confirmselectproduct}
    Click element                       ${confirmselectproduct}
    sleep   2s
    Wait until element is visible       ${confirmorder}
    Click element                       ${confirmorder}
    sleep   2s
Confirm Order 4
    Wait until element is visible       ${selectorder1}
    Click element                       ${selectorder1}
    sleep   10s
    ${windows}=                         Get Window Handles
    Switch Window                       ${windows}[1]
    Wait until element is visible       ${option}
    Click element                       ${option}
    sleep   2s
    Wait until element is visible       ${confirmcod}
    Click element                       ${confirmcod}
    sleep   2s
    Wait until element is visible       ${confirmbutton}
    Click element                       ${confirmbutton}
    sleep   5s
    Close window
    sleep   2s
    Switch Window                       ${windows}[0]
Confirm Order 2
    Wait until element is visible       ${ordermenu}
    Click element                       ${ordermenu}
    sleep   2s
    Wait until element is visible       ${selectorder3}
    Click element                       ${selectorder3}
    sleep   10s
    ${windows}=                         Get Window Handles
    Switch Window                       ${windows}[1]
    Wait until element is visible       ${paymentbutton}
    Click element                       ${paymentbutton}
    sleep   2s
    Wait until element is visible       ${selectbank}
    Click element                       ${selectbank}
    sleep   2s
    Click element                       ${firstbank}
    sleep   2s
    Wait Until Page Contains Element    ${uploadfield}
    sleep   2s
    Choose File                         ${uploadfield}          ${testpic2}
    sleep   5s
    Wait until element is visible       ${confirmpaymentbutton}
    Click element                       ${confirmpaymentbutton}
    sleep   10s
    Wait until element is visible       ${paymentbutton}
    Click element                       ${paymentbutton}
    Wait until element is visible       ${confirmallpayment}
    Click element                       ${confirmallpayment}
    sleep   5s
    Wait until element is visible       ${confirmallpayment2}
    Click element                       ${confirmallpayment2}
    sleep   10s
    Close window
    sleep   2s
    Switch Window                       ${windows}[0]


Shipment1
    sleep   5s
    Click element                       ${shipmentmenu}
    sleep   2s
    Click element                       ${shipmentmenu}
    sleep   2s
    Wait until element is visible       ${selectshipment}
    Click element                       ${selectshipment}
    sleep   1s
    Wait until element is visible       ${selectshipment2}
    Click element                       ${selectshipment2}
    sleep   2s
    Wait until element is visible       ${shipkerry}
    Click element                       ${shipkerry}
    sleep   5s
    Wait until element is visible       ${confirmselectship}
    Click element                       ${confirmselectship}
    sleep   5s
    Click element                       ${paymentship}
    sleep   10s
    Wait until element is visible       ${confirmreadyship}
    Click element                       ${confirmreadyship}
    sleep   10s

Shipment2
    sleep   5s
    Click element                       ${shipmentmenu}
    sleep   2s
    Click element                       ${shipmentmenu}
    sleep   2s
    Wait until element is visible       ${selectshipment}
    Click element                       ${selectshipment}
    sleep   1s
    Wait until element is visible       ${selectshipment2}
    Click element                       ${selectshipment2}
    sleep   2s
    Wait until element is visible       ${shipthaipost}
    Click element                       ${shipthaipost}
    sleep   5s
    Wait until element is visible       ${confirmselectship}
    Click element                       ${confirmselectship}
    sleep   5s
    Click element                       ${paymentship}
    sleep   10s
    Wait until element is visible       ${confirmreadyship}
    Click element                       ${confirmreadyship}
    sleep   20s

Shipment3
    sleep   5s
    Click element                       ${shipmentmenu}
    sleep   2s
    Click element                       ${shipmentmenu}
    sleep   2s
    Wait until element is visible       ${selectshipment}
    Click element                       ${selectshipment}
    sleep   1s
    Wait until element is visible       ${selectshipment2}
    Click element                       ${selectshipment2}
    sleep   2s
    Wait until element is visible       ${shipflash}
    Click element                       ${shipflash}
    sleep   5s
    Wait until element is visible       ${confirmselectship}
    Click element                       ${confirmselectship}
    sleep   5s
    Click element                       ${paymentship}
    sleep   10s
    Wait until element is visible       ${confirmreadyship}
    Click element                       ${confirmreadyship}
    sleep   20s

Shipment4
    sleep   5s
    Click element                       ${shipmentmenu}
    sleep   2s
    Click element                       ${shipmentmenu}
    sleep   2s
    Wait until element is visible       ${selectshipment}
    Click element                       ${selectshipment}
    sleep   1s
    Wait until element is visible       ${selectshipment2}
    Click element                       ${selectshipment2}
    sleep   2s
    Wait until element is visible       ${shipninjavan}
    Click element                       ${shipninjavan}
    sleep   5s
    Wait until element is visible       ${confirmselectship}
    Click element                       ${confirmselectship}
    sleep   5s
    Click element                       ${paymentship}
    sleep   10s
    Wait until element is visible       ${confirmreadyship}
    Click element                       ${confirmreadyship}
    sleep   10s

***Test Cases ***
Login Dev Env
    Login

Click shop
    Click Shop

Click Order Menu
    Click Order Menu

Add Order 1
    Add Order 1

Add Order 2
    Add Order 2

Add Order 3
    Add Order 3

Add Order 4
    Add Order 4

Confirm Order 4
    Confirm Order 4

Confirm Order 2
    Confirm Order 2


# Shipment1
#     Shipment1
Shipment2
    Shipment2
Shipment3
    Shipment3
# Shipment4
#     Shipment4

# Click Shipment Kerry
#     Kerry Shipment 1
#     Kerry Shipment 2
#     Kerry Shipment 3
#     Kerry Shipment 4
#     Kerry Shipment 5
#     Packing

Click Shipment Thaipost
    Thaipost Shipment 1
    Thaipost Shipment 2
    Thaipost Shipment 3
    Thaipost Shipment 4
    Thaipost Shipment 5
    Packing

Click Shipment Flash
    Flash Shipment 1
    Flash Shipment 2
    Flash Shipment 3
    Flash Shipment 4
    Flash Shipment 5
    Packing

# Click Shipment Ninja
#     Ninja Shipment 1
#     Ninja Shipment 2
#     Ninja Shipment 3
#     Ninja Shipment 4
#     Ninja Shipment 5
#     Packing