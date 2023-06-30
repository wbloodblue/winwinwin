*** Settings ***
Library         SeleniumLibrary      timeout=20
Resource        resource.robot

***Test Cases ***
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

Open Upsale
    Upsale

