*** Settings ***
Resource    ../main.robot

*** Keywords ***
dado que acesse o site e realize login
    acessar website
    login
    validar login

finalizado
    Close Browser
