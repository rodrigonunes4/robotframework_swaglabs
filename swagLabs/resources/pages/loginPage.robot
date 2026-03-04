*** Settings ***
Resource    ../main.robot

*** Variables ***

&{login}
...    input_userName=//input[@id="user-name"]
...    input_password=//input[@id="password"]
...    input_submitButton=//input[@id="login-button"]

*** Keywords ***

acessar website
    Open Browser   ${general.URL}    ${general.BROWSER}
    Maximize Browser Window

login
    Input Text        ${login.input_userName}    ${loginData.userName}
    Input Text    ${login.input_password}    ${loginData.password}
    Click Element     ${login.input_submitButton}

validar login
    Wait Until Page Contains Element    //span[@class="title"]
