*** Settings ***
Library    SeleniumLibrary


###    Data    ###
Resource    data/general.robot
Resource    data/loginCheckout.robot

###    Shared    ###
Resource    shared/setup_teardown.robot

###    Pages    ###
Resource    pages/cart.robot
Resource    pages/checkout.robot
Resource    pages/complete.robot
Resource    pages/inventory.robot
Resource    pages/loginPage.robot
Resource    pages/overview.robot
