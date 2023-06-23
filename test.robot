*** Settings ***
Library    SeleniumLibrary

*** Variable ***
${url}                      https://demo.wpeverest.com/user-registration/online-event-registration-form/
${firstname}                //*[@id="first_name"]
${lastname}                 //*[@id="last_name"]
${useremail}                //*[@id="user_email"]
${phone}                    //*[@id="phone_1665630575"]                
${userpass}                 //*[@id="user_pass"]
${male}                     //*[@id="radio_1665631120_Male"]
${female}                   //*[@id="radio_1665631120_Female"]
${other}                    //*[@id="radio_1665631120_Other"]
${submit}                   //*[@id="user-registration-form-775"]/form/div[4]/button
${success}                  //*[@id="ur-submit-message-node"]
${firstnameerror}           //*[@id="first_name-error"]
${lastnameerror}            //*[@id="last_name-error"]
${useremailerror}           //*[@id="user_email-error"]
${phoneerror}               //*[@id="phone_1665630575-error"]                
${userpasserror}            //*[@id="user_pass-error"]
${gendererror}              //*[@id="radio_1665631120-error"]

*** Keywords ***
First Name
    Element Should Be Visible           ${firstname}
    Input Text                          ${firstname}       ธนวิน

Last Name
    Element Should Be Visible           ${lastname}
    Input Text                          ${lastname}       เฟื่องฟุ้ง

User Email
    Element Should Be Visible           ${useremail}
    Input Text                          ${useremail}      wbloodblue3@gmail.com

User Password
    Element Should Be Visible           ${userpass}
    Input Text                          ${userpass}       win2529800

Phone
    Element Should Be Visible           ${phone}
    Click Element                       ${phone}
    Press Keys                          ${phone}          0924213399

male
    Element Should Be Visible           ${male}
    Click Element                       ${male}

female
    Element Should Be Visible           ${female}
    Click Element                       ${female}

other
    Element Should Be Visible           ${other}
    Click Element                       ${other}

click submit
    Element Should Be Visible           ${submit}
    Click Element                       ${submit}



***Test Cases ***
Submit Success
    Open Browser                        ${url}             edge
    Maximize Browser Window
    First Name
    Last Name
    User Email
    User Password
    Phone
    male
    click submit
    Wait until element is Visible           ${success}

Fill Only First Name
    Open Browser                            ${url}             edge
    First Name
    click submit
    Wait until element is Visible           ${lastnameerror}
    Wait until element is Visible           ${useremailerror}
    Wait until element is Visible           ${userpasserror}
    Wait until element is Visible           ${phoneerror}
    Wait until element is Visible           ${gendererror}

Fill Only Last Name
    Open Browser                            ${url}             edge
    Last Name
    click submit
    Wait until element is Visible           ${firstnameerror}
    Wait until element is Visible           ${useremailerror}
    Wait until element is Visible           ${userpasserror}
    Wait until element is Visible           ${phoneerror}
    Wait until element is Visible           ${gendererror}


