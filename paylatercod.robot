*** Settings ***
Library    SeleniumLibrary      timeout=25

*** Variable ***
${url}                      https://devgosaas.app/login
${urluat}                   https://uatgosaas.app/login
${email}                    //*[@id="LoginForm"]/div[1]/input
${password}                 //*[@id="LoginForm"]/div[2]/input
${loginbutton}              //*[@id="LoginForm"]/div[4]/button
${shop}                     //*[@id="Stores"]/div/div/div/div[2]/div/div/div/div/div/div[2]/div/div[2]/h6
${confirmbutton}            //html/body/div[2]/div/div[6]/button[1]
${confirmpack}              //*[@id="modalNearExpirePlan"]/div/div/div[3]/button[1]
${ordermenu}                //html/body/section/div[2]/div[2]/div[2]/div/ul/li[3]/a
${createorder}              //html/body/section/div[2]/div[4]/div[3]/div/div[2]/div/div[1]/div[2]/div/div/div[1]/div[1]/button
${fromfacebook}             //*[@id="order_form_modal"]/div/div[3]/form/div[2]/div[1]/div[2]/div/div/div[2]/div/div/div/div/div[1]/label/div
${fromline}                 //*[@id="order_form_modal"]/div/div[3]/form/div[2]/div[1]/div[2]/div/div/div[2]/div/div/div/div/div[2]/label/div
${fromig}                   //*[@id="order_form_modal"]/div/div[3]/form/div[2]/div[1]/div[2]/div/div/div[2]/div/div/div/div/div[4]/label/div
${fromtiktok}               //*[@id="order_form_modal"]/div/div[3]/form/div[2]/div[1]/div[2]/div/div/div[2]/div/div/div/div/div[5]/label/div
${userbox}                  //*[@id="customer-search"]/div/span/span[1]/span/ul/li/input
${firstuser}                //*[@id="select2--results"]/li
${addpayment}               //*[@id="is_payment_status"]/div
${uploadfield}              //*[@id="payment-component"]/div[4]/div/div[1]
${paymentcompleted}         //*[@id="payment-component"]/div[4]/div/div[5]/div/div
${searchproduct}            //*[@id="product-search"]/div/span/span[1]/span/ul/li
${searchresult1}            //*[@id="select2--results"]/li
${selectproduct}            //*[@id="tb-product"]/tr/td/div/div[2]/button
${basicproduct}             //*[@id="product_promotion"]/div[2]/div[2]/div/div/div[1]/div/ul/li[2]/a
${firstproduct}             //*[@id="table_product_promotion"]/div/div/div/table/tbody/tr/td[1]/input
${confirmselectproduct}     //*[@id="product_promotion"]/div[3]/div/button[1]
${confirmorder}             //*[@id="order_form_modal"]/div/div[3]/form/div[2]/div[1]/div[6]/button[1]
${selectfirstorder}         //*[@id="table-order"]/div/div/div/table/tbody/tr[1]/td[1]
${shipmentmenu}             //html/body/section/div[2]/div[2]/div[2]/div/ul/li[5]
${selectshipment}           //html/body/section/div[2]/div[4]/div[3]/div/div[1]/div[2]/div[3]/div[1]/div/div/div/table/tbody/tr[1]/td[18]/div/button[1]
${shipthaipost}             //*[@id="modal_change_carriers"]/div/div/div[3]/div/div/div/div[1]/div[1]/div[4]/button
${shipkerry}                //*[@id="modal_change_carriers"]/div/div/div[3]/div/div/div/div[2]/div[1]/div[4]/button
${confirmselectship}        //*[@id="carrier-checklist"]/div/div/div[3]/button[2]
${paymentship}              //*[@id="modal_pay_for_shipment"]/div/div/div[2]/div/div[2]/div/div[3]/button[1]
${readyship}                //*[@id="sweet_ready_to_ship_item"]
${packing}                  //html/body/section/div[2]/div[4]/div[3]/div/div[1]/div[2]/div[1]/ul/li[2]/a
${confirmreadyship}         //html/body/div[2]/div/div[6]/button[1]
${selectorderid}            //*[@id="table-order"]/div/div/div/table/tbody/tr[1]/td[5]/div/span/a
${paymentbutton}            //html/body/section/div[2]/div[4]/div[3]/div/div[1]/div[1]/div[1]/div[2]/button[1]
${selectbank}               //*[@id="select2--container"]/span/div
${firstbank}                //*[contains(text(), "Simple Bank Account")]
${pricepaste}               //*[@id="add_payment"]/div/div[1]/div/div[3]/div/div/input
${addbankacc}               //*[@id="add_payment"]/div/div[1]/div/div[5]/div/div/input
${addref}                   //*[@id="add_payment"]/div/div[1]/div/div[6]/div/div/input
${confirmpaymentbutton}     //*[@id="add_payment"]/div/div[2]/div/button[1]
${confirmallpayment}        //*[@id="list_payment"]/div[3]/div/button[2]
${confirmallpayment2}       //html/body/div[3]/div/div[6]/button[1]
${cod}                      //*[@id="payment-component"]/div[1]/div/div/div[2]/button
${checkboxcod}              //*[@id="payment-component"]/div[2]/div/div
${option}                   //html/body/section/div[2]/div[4]/div[3]/div/div[1]/div[1]/div[1]/div[2]/div[1]/button
${confirmcod}               //html/body/section/div[2]/div[4]/div[3]/div/div[1]/div[1]/div[1]/div[2]/div[1]/div/a[1]   
${announcementconfirm}      //*[@id="announcement"]/div/div/div[1]/button

*** Keywords ***

Click Shop
    sleep   2s
    Wait until element is visible       ${shop}
    Click element                       ${shop}
    Wait until element is visible       ${confirmbutton}
    click element                       ${confirmbutton}
    sleep   10s
    ${p} =   Get Element Count          ${confirmpack}
    Run Keyword If   ${p}>0             Click pack
    sleep   5s
    ${c} =   Get Element Count         ${announcementconfirm}
    Run Keyword If   ${c}>0            Click announcement

Click pack
    Click element                       ${confirmpack}

Click announcement
    Click element                       ${announcementconfirm}

Click vat
    Click element                       ${vatconfirm}

Click Order Menu
    Wait until element is visible       ${ordermenu}
    Click element                       ${ordermenu}
    Wait until element is visible       ${createorder}
    Click element                       ${createorder}
    sleep   2s

Add Order and Payment 4
    Wait until element is visible       ${fromtiktok}
    Click element                       ${fromtiktok}
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
    Press Keys                          ${pagedown}
    sleep   3s
    Wait until element is visible       ${searchproduct}
    Click element                       ${searchproduct}
    sleep   1s
    Wait until element is visible       ${searchresult1}
    Click element                       ${searchresult1}
    ${price}=        Get Text           //*[@id="order_form_modal"]/div/div[3]/form/div[2]/div[1]/div[5]/div/div[2]/div/div/table/tbody/tr[6]/td[2]
    sleep   1s
    Wait until element is visible       ${confirmorder}
    Click element                       ${confirmorder}
    sleep   2s
    Wait until element is visible       ${selectorderid}
    Click element                       ${selectorderid}
    sleep   10s
    Switch Window                       locator=NEW
    Wait until element is visible       ${option}
    Click element                       ${option}
    sleep   2s
    Wait until element is visible       ${confirmcod}
    Click element                       ${confirmcod}
    sleep   2s
    Wait until element is visible       ${confirmbutton}
    Click element                       ${confirmbutton}
    sleep   5s

Shipment
    sleep   3s
    Click element                       ${shipmentmenu}
    sleep   2s
    Wait until element is visible       ${selectshipment}
    Click element                       ${selectshipment}
    sleep   2s
    Wait until element is visible       ${shipkerry}
    Click element                       ${shipkerry}
    sleep   10s
    Wait until element is visible       ${confirmselectship}
    Click element                       ${confirmselectship}
    sleep   5s
    Click element                       ${paymentship}
    sleep   15s
    Wait until element is visible       ${confirmreadyship}
    Click element                       ${confirmreadyship}
    sleep   10s
    Wait until element is visible       ${packing}
    Click element                       ${packing}
    sleep   5s
    Wait until element is visible       ${readyship}
    Click element                       ${readyship}
    Wait until element is visible       ${confirmreadyship}
    Click element                       ${confirmreadyship}
    sleep   10s

***Test Cases ***
COD ยืนยันการชำระเงินทีหลัง
    Login
    Click Shop
    Click Order Menu
    Add Order and Payment
    Shipment