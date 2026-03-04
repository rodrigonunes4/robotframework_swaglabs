*** Settings ***
Resource    ../main.robot

*** Variables ***

&{complete}
...    button_backToProducts=//button[@id="back-to-products"]
...    h2_proof=//h2[@class="complete-header"]

*** Keywords ***

e volto ao inicio apos a transacao ser finalizada
    Click Element    ${complete.button_backToProducts}
