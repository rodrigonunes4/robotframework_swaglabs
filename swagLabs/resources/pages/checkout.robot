*** Settings ***
Resource    ../main.robot

*** Variables ***

&{checkout}
...    input_firstName=//input[@id="first-name"]
...    input_lastName=//input[@id="last-name"]
...    input_postalCode=//input[@id="postal-code"]
...    input_continue=//input[@id="continue"]
...    button_cancel=//button[@id="cancel"]

*** Keywords ***

entao preencho os dados pessoais
    Input Text    ${checkout.input_firstName}    ${checkoutData.firstName}
    Input Text    ${checkout.input_lastName}    ${checkoutData.lastName}
    Input Text    ${checkout.input_postalCode}    ${checkoutData.postalCode}
    
cancel checkout
    Click Element    ${checkout.button_cancel}

e clico para continuar o checkout
    Click Element    ${checkout.input_continue}