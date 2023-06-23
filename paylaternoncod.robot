*** Settings ***
Library    SeleniumLibrary      timeout=20
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

Add Order and Payment 2
    Wait until element is visible       ${fromline}
    Click element                       ${fromline}
    sleep   2s
    Wait until element is visible       ${userbox}
    Click element                       ${userbox}
    sleep   2s
    Wait until element is visible       ${firstuser}
    Click element                       ${firstuser}
    Press Keys                           xpath=//body        \ue00f
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
    sleep   7s
    Wait until element is visible       ${selectorder1}
    Click element                       ${selectorder1}
    sleep   10s
    Switch Window                       locator=NEW
    Wait until element is visible       ${paymentbutton}
    Click element                       ${paymentbutton}
    sleep   2s
    Wait until element is visible       ${selectbank}
    Click element                       ${selectbank}
    sleep   2s
    Click element                       ${firstbank}
    sleep   2s
    # Wait until element is visible       ${pricepaste}
    # Input Text                          ${pricepaste}           ${price}
    # Input Text                          ${addbankacc}           0000000000
    # Input Text                          ${addref}               ABCD
    # Wait until element is visible       ${confirmpaymentbutton}
    # Click element                       ${confirmpaymentbutton}
    # sleep   10s
    # Wait until element is visible       ${paymentbutton}
    # Click element                       ${paymentbutton}
    # Wait until element is visible       ${confirmallpayment}
    # Click element                       ${confirmallpayment}
    # sleep   5s
    # Wait until element is visible       ${confirmallpayment2}
    # Click element                       ${confirmallpayment2}
    # sleep   10s
    Wait Until Page Contains Element    ${uploadfield}
    sleep   2s
    Choose File                         ${uploadfield}          ${testpic}
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
ยืนยันการชำระเงินทีหลัง
    Login
    Click Shop
    Click Order Menu
    Add Order and Payment 2
    #Shipment