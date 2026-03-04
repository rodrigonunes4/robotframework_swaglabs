*** Settings ***
Resource    ../main.robot

*** Variables ***

&{cart}
...    div_cartContainer=//div[@class="cart_contents_container"]
...    div_cartItem=//div[@class="cart_item"]
...    button_checkout=//button[@id="checkout"]
...    button_continueShopping=//button[@id="continue-shopping"]

*** Keywords ***

remove product from cart overview
    [Arguments]    ${productName}

    Click Element    xpath://div[text()="${productName}"]/ancestor::div[@class="cart_item"]//button

e clico no botao de checkout
    Click Element    ${cart.button_checkout}

click continue shopping button
    Click Element    ${cart.button_continueShopping}