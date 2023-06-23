*** Settings ***
Library         SeleniumLibrary      timeout=20
Resource        resource.robot

*** Keywords ***
Click Sale Page
    Wait until element is visible           ${salepagemenu}
    Click element                           ${salepagemenu}
    sleep   2s
    Wait until element is visible           ${salepage}
    Click element                           ${salepage}
    sleep   2s

Add Salepage
    Wait until element is visible           ${addsalepage}
    Click element                           ${addsalepage}
    sleep   1s
    ${windows}=                             Get Window Handles
    Switch Window                           ${windows}[1]
    sleep   1s
    Wait until element is visible           ${paymentsetting}
    Click element                           ${paymentsetting}
    sleep   2s
    Click element                           ${checkboxtransfer}
    sleep   2s
    Click element                           ${checkboxslip}
    sleep   1s
    Wait until element is visible           ${settingsalepage}
    Click element                           ${settingsalepage}
    sleep   2s
    Wait until element is visible           ${salepagename}
    ${random_number}=    Evaluate    random.randint(1000, 9999)
    ${randomname}=    Catenate    winwinwin    ${random_number}
    Input text                              ${salepagename}         ${randomname}
    sleep   2s
    Click element                           ${1steporder}
    sleep   2s
    Wait until element is visible           ${salepageproduct}
    Click element                           ${salepageproduct}
    sleep   2s
    Wait until element is visible           ${firstproduct_salepage}
    Click element                           ${firstproduct_salepage}
    sleep   2s
    Press Keys                              xpath=//body        \ue00f
    Press Keys                              xpath=//body        \ue00f
    Press Keys                              xpath=//body        \ue00f
    sleep   2s
    Drag And Drop by offset                 ${widget1}             1000      550
    # Drag And Drop                            ${widget2}             ${dropwidget}
    # Drag And Drop                            ${widget3}             ${dropwidget}           
    sleep   10s
    # Wait until element is visible           ${saveandclose}
    # Click element                           ${saveandclose}
    # sleep   20s
    # Switch Window                           ${windows}[0]
    # Reload Page
    # sleep   5s
Confirm buy COD
    Wait until element is visible           ${viewsalepage}
    Click element                           ${viewsalepage}
    sleep   2s
    ${windows}=                             Get Window Handles
    Switch Window                           ${windows}[1]
    sleep   2s
    Click element                           ${firstlist}
    sleep   5s
    Click element                           ${secondlist}
    sleep   2s
    Press Keys                              xpath=//body        \ue00f
    Press Keys                              xpath=//body        \ue00f
    Press Keys                              xpath=//body        \ue00f
    sleep   10s
    Wait until element is visible           ${clickcod}
    Click element                           ${clickcod}
    sleep   1s
    Wait until element is visible           ${fullname}
    Input Text                              ${fullname}         John Cena
    Wait until element is visible           ${telephone}
    Input Text                              ${telephone}        0924213399
    Wait until element is visible           ${address}
    Input Text                              ${address}          150/51
    Wait until element is visible           ${subdistrict}
    Input Text                              ${subdistrict}      สุรศักดิ์
    sleep   1s
    Click element                           ${checkoutaddress}
    sleep   1s
    Press Keys                              xpath=//body        \ue00f
    sleep   1s 
    Wait until element is visible           ${orderbuy}
    Click element                           ${orderbuy}
    sleep   2s
    Close window
    sleep   2s
    Switch Window                           ${windows}[0]
    sleep   5s

Confirm buy transfer
    Wait until element is visible           ${viewsalepage}
    Click element                           ${viewsalepage}
    sleep   2s
    ${windows}=                             Get Window Handles
    Switch Window                           ${windows}[1]
    sleep   2s
    Click element                           ${firstlist}
    sleep   2s
    Click element                           ${secondlist}
    sleep   2s
    Press Keys                              xpath=//body        \ue00f
    Press Keys                              xpath=//body        \ue00f
    Press Keys                              xpath=//body        \ue00f
    sleep   2s
    Wait until element is visible           ${clickpaybank}
    Click element                           ${clickpaybank}
    sleep   1s
    Choose File                             ${uploadslip}          ${testpic}
    sleep   1s
    Press Keys                              xpath=//body        \ue00f
    sleep   1s
    Wait until element is visible           ${fullname}
    Input Text                              ${fullname}         John Cena
    sleep   1s
    Wait until element is visible           ${telephone}
    Input Text                              ${telephone}        0924213399
    Wait until element is visible           ${address}
    Input Text                              ${address}          150/51
    Wait until element is visible           ${subdistrict}
    Input Text                              ${subdistrict}      สุรศักดิ์
    sleep   1s
    Click element                           ${checkoutaddress}
    sleep   1s
    Press Keys                              xpath=//body        \ue00f
    sleep   1s
    Click element                           ${subdistrict}
    sleep   1s
    Wait until element is visible           ${orderbuy}
    Click element                           ${orderbuy}
    sleep   2s
    Close window
    sleep   2s
    Switch Window                           ${windows}[0]
    sleep   5s

Confirm Order COD
    Wait until element is visible       ${ordermenu}
    Click element                       ${ordermenu}
    sleep   1s
    Wait until element is visible       ${selectorder1}
    Click element                       ${selectorder1}
    sleep   5s
    ${windows}=                             Get Window Handles
    Switch Window                           ${windows}[1]
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

Confirm Order transfer
    Wait until element is visible       ${ordermenu}
    Click element                       ${ordermenu}
    sleep   1s
    Wait until element is visible       ${selectorder2}
    Click element                       ${selectorder2}
    sleep   5s
    ${windows}=                             Get Window Handles
    Switch Window                           ${windows}[1]
    Wait until element is visible       ${paymentbutton}
    Click element                       ${paymentbutton}
    sleep   2s
    Wait until element is visible       ${confirmallpayment}
    Click element                       ${confirmallpayment}
    sleep   2s
    Wait until element is visible       ${confirmallpayment2}
    Click element                       ${confirmallpayment2}
    sleep   5s
    Close window
    sleep   2s
    Switch Window                       ${windows}[0]    

Shipment
    sleep   5s
    Click element                       ${shipmentmenu}
    sleep   2s
    Wait until element is visible       ${selectshipment}
    Click element                       ${selectshipment}
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
    sleep   5s

*** Test Cases ***
Login and Select Shop
    Login
    Click Shop

Click Salepage
    Click Sale Page

Add Salepage
    Add Salepage

# Confirm buy payment
#     Confirm buy transfer

# Confirm buy COD
#     Confirm buy COD

# Confirm Order COD
#     Confirm Order COD

# Shipment
#     Shipment
#     Packing

# Confirm Order transfer
#     Confirm Order transfer

# Shipment
#     Shipment
#     Packing