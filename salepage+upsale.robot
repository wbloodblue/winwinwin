*** Settings ***
Library         SeleniumLibrary      timeout=60
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
    # Drag And Drop                            ${widget1}             ${dropwidget}
    # Drag And Drop                            ${widget2}             ${dropwidget}
    # Drag And Drop                            ${widget3}             ${dropwidget}           
    # sleep   10s
    Wait until element is visible           ${saveandclose}
    Click element                           ${saveandclose}
    sleep   20s
    Switch Window                           ${windows}[0]
    Reload Page
    sleep   5s
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
    sleep   2s
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

Upsale cod
    Wait until element is visible           ${upsalemenu}
    Click element                           ${upsalemenu}
    sleep   1s
    Wait until element is visible           ${upsalemenu2}
    Click element                           ${upsalemenu2}
    sleep   3s
    Wait until element is visible           ${requestorder}
    Click element                           ${requestorder}
    sleep   3s
    Wait until element is visible           ${upsaleorder}
    Click element                           ${upsaleorder}
    sleep   2s
    Wait until element is visible           ${upsaleorder1}
    Click element                           ${upsaleorder1}
    sleep   5s
    Wait until element is visible           ${upsalebutton}
    Click element                           ${upsalebutton}
    sleep   5s
    Wait until element is visible           ${upsalesuccess}
    Click element                           ${upsalesuccess}
    sleep   5s
    Wait until element is visible           ${searchupsaleproduct}
    Click element                           ${searchupsaleproduct}
    sleep   2s
    Click element                           ${upsaleproduct3}
    sleep   2s
    Wait until element is visible           ${confirmupsale}
    Click element                           ${confirmupsale}
    sleep   5s
    Wait until element is visible           ${option}
    Click element                           ${option}
    sleep   1s
    Wait until element is visible           ${confirmcod}
    Click element                           ${confirmcod}
    sleep   2s
    Wait until element is visible           ${confirmbutton}
    Click element                           ${confirmbutton}
    sleep   10s

Upsale transfer
    Wait until element is visible           ${upsalemenu}
    Click element                           ${upsalemenu}
    sleep   1s
    Wait until element is visible           ${upsalemenu2}
    Click element                           ${upsalemenu2}
    sleep   3s
    Wait until element is visible           ${requestorder}
    Click element                           ${requestorder}
    sleep   3s
    Wait until element is visible           ${upsaleorder}
    Click element                           ${upsaleorder}
    sleep   2s
    Wait until element is visible           ${upsaleorder1}
    Click element                           ${upsaleorder1}
    sleep   5s
    Wait until element is visible           ${upsalebutton}
    Click element                           ${upsalebutton}
    sleep   5s
    Wait until element is visible           ${upsalesuccess}
    Click element                           ${upsalesuccess}
    sleep   5s
    Wait until element is visible           ${searchupsaleproduct}
    Click element                           ${searchupsaleproduct}
    sleep   2s
    Wait until element is visible           ${upsaleproduct3}
    Click element                           ${upsaleproduct3}
    sleep   2s
    Wait until element is visible           ${confirmupsale}
    Click element                           ${confirmupsale}
    sleep   5s
    Wait until element is visible           ${upsalebutton}
    Click element                           ${upsalebutton}
    sleep   1s
    Wait until element is visible           ${addpaymenttransfer}
    Click element                           ${addpaymenttransfer}
    sleep   5s
    Wait Until Page Contains Element        ${uploadfield}
    sleep   2s
    Choose File                             ${uploadfield}          ${testpic}
    sleep   2s
    Wait Until Page Contains Element        ${selectbankupsale}
    Click element                           ${selectbankupsale}
    sleep   2s
    Wait until Page Contains Element        ${firstbank}
    Click element                           ${firstbank}
    sleep   2s
    Wait until element is visible           ${confirmpaymentbutton}
    Click element                           ${confirmpaymentbutton}
    sleep   2s
    Wait until element is visible           ${upsalebutton}
    Click element                           ${upsalebutton}
    sleep   2s
    Wait until element is visible           ${confirmallpayment}
    Click element                           ${confirmallpayment}
    sleep   2s
    Wait until element is visible           ${confirmallpayment2}
    Click element                           ${confirmallpayment2}
    sleep   10s
    
Shipment
    sleep   5s
    Click element                       ${shipmentmenu}
    sleep   5s
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
    sleep   5s

*** Test Cases ***
Login and Select Shop
    Login
    Click Shop

Click Salepage
    Click Sale Page

Add Salepage
    Add Salepage

Confirm Order
    Confirm buy COD
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