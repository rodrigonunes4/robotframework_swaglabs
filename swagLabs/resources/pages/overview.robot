*** Settings ***
Resource    ../main.robot

*** Variables ***

&{overview}
...    div_cartItem=//div[@class="cart_item"]
...    button_finish=//button[@id="finish"]
...    button_cancel=//button[@id="cancel"]
...    div_totalPrice=//div[@class="summary_total_label"]

*** Keywords ***

e decido continuar comprando
    Click Element    ${overview.button_cancel}

entao a transacao e finalizada
    Click Element    ${overview.button_finish}
    Element Should Be Visible    ${complete.h2_proof}
