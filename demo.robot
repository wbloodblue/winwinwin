*** Settings ***
Library    SeleniumLibrary

*** Variable ***
${url_google}               http://www.google.co.th
${title}                    Google
${searchbox}                //*[@id="APjFqb"]
${wiki}                     xpath=//*[@id="rso"]/div[2]/div/div/div/div[1]/div/a/h3


*** Keywords ***
Verify google page
    Title Should Be         ${title}

Search
    Element Should Be Visible           ${searchbox}
    Input Text                          ${searchbox}       สวัสดี
    Press Keys                          ${searchbox}       ENTER


***Test Cases ***
เปิด google.co.th ด้วย edge
    Open Browser            ${url_google}           edge

check title
    Verify google page

Search ว่า สวัสดี
    Search

Click wikipedia
    Click Element                       ${wiki}

