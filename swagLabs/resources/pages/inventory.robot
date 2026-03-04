*** Settings ***
Resource    ../main.robot

*** Variables ***

&{inventory}
...    div_investoryItem=//div[@class="inventory_item"]
...    a_cartButton=//a[@class="shopping_cart_link"]

*** Keywords ***

entao o item e colocado no carirnho
    [Arguments]    ${productName}

    Click Element    xpath=//div[text()="${productName}"]/ancestor::div[@class="inventory_item"]//button

entao o item e removido do carrinho
    [Arguments]    ${productName}

    Click Element    xpath=//div[text()="${productName}"]/ancestor::div[@class="inventory_item"]//button

e acesso o carrinho
    Click Element    ${inventory.a_cartButton}


