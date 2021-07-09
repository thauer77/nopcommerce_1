*** Settings ***
Documentation  Test Suite "nopCommerce Shop"
Resource  ../Resources/CommonWeb.robot
Resource  ../Resources/Configuration.robot
Resource  ../Resources/nopCommerceApp.robot
Resource  ../Resources/Resources1.robot


Test Setup  Begin Web Test
Test Teardown  End Web Test

# robot -d results Tests/TC_07_Shipping.robot

*** Variables ***


*** Test Cases ***
Order Product
    [Documentation]  Test Case 1
    [Tags]  test1
    Go to Landing page
    Sleep  3s
    Select From List By Label  id=customerCurrency  ${CURRENCY}
    Sleep  3s
    Input Text  id=small-searchterms  ${SEARCH_PRODUCT}
    Sleep  3s
    Click Button  css=#small-search-box-form > button
    Sleep  3s
    Click Button  css=body > div.master-wrapper-page > div.master-wrapper-content > div > div.center-2 > div > div.page-body > div.search-results > div > div.products-wrapper > div > div > div > div > div.details > div.add-info > div.buttons > button.button-2.product-box-add-to-cart-button
    Sleep  3s
    Click link  xpath://a[text()='Shopping cart']
    Sleep  5s
    Set Variable  id=itemquantity11221  ${QUANTITY}
    Sleep  5s
    Click Button  css=#shopping-cart-form > div.cart-options > div.common-buttons > button.button-2.update-cart-button
    Sleep  5
    Click Button  css=#shopping-cart-form > div.cart-options > div.common-buttons > button.button-2.continue-shopping-button
    Sleep  3
    Capture Page Screenshot

Gift wrapping
    [Documentation]  Test Case 2
    [Tags]  test2
    Go to Landing page
    Sleep  3s
    Select From List By Label  id=customerCurrency  ${CURRENCY}
    Sleep  3s
    Input Text  id=small-searchterms  ${SEARCH_PRODUCT}
    Sleep  3s
    Click Button  css=#small-search-box-form > button
    Sleep  3s
    Click Button  css=body > div.master-wrapper-page > div.master-wrapper-content > div > div.center-2 > div > div.page-body > div.search-results > div > div.products-wrapper > div > div > div > div > div.details > div.add-info > div.buttons > button.button-2.product-box-add-to-cart-button
    Sleep  3s
    Click link  xpath://a[text()='Shopping cart']
    Sleep  5s
    Set Variable  id=itemquantity11221  ${QUANTITY}
    Sleep  5s
    Click Button  css=#shopping-cart-form > div.cart-options > div.common-buttons > button.button-2.update-cart-button
    Sleep  5
    Select From List By Label  id=checkout_attribute_1  ${GIFT_WRAPPING}
    Sleep  3
    Select Checkbox  id=termsofservice
    Sleep  3
    Click link  id=open-estimate-shipping-popup
    #Click Button  css=#checkout
    #sleep  3
