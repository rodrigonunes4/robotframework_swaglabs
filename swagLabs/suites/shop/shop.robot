*** Settings ***
Resource    ../../resources/main.robot

Suite Setup    Set Selenium Speed    0.2s

Test Setup    dado que acesse o site e realize login
Test Teardown    finalizado

*** Test Cases ***
TC01 - Buying a t-shirt
    entao o item e colocado no carirnho    Sauce Labs Bolt T-Shirt
    e acesso o carrinho
    e clico no botao de checkout
    entao preencho os dados pessoais
    e clico para continuar o checkout
    entao a transacao e finalizada
    e volto ao inicio apos a transacao ser finalizada

TC02 - Buying a onesie and a bike
    entao o item e colocado no carirnho    Sauce Labs Onesie
    entao o item e colocado no carirnho    Sauce Labs Bike Light
    e acesso o carrinho
    e clico no botao de checkout
    entao preencho os dados pessoais
    e clico para continuar o checkout
    entao a transacao e finalizada
    e volto ao inicio apos a transacao ser finalizada

TC03 - Buying the same product in two different transactions
    FOR    ${i}    IN RANGE    2
        entao o item e colocado no carirnho    Sauce Labs Onesie
        e acesso o carrinho
        e clico no botao de checkout
        entao preencho os dados pessoais
        e clico para continuar o checkout
        entao a transacao e finalizada
        e volto ao inicio apos a transacao ser finalizada
    END