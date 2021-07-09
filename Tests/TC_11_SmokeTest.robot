*** Settings ***
Documentation  Test Suite "nopCommerce Shop"
Resource  ../Resources/CommonWeb.robot
Resource  ../Resources/Configuration.robot
Resource  ../Resources/nopCommerceApp.robot
Resource  ../Resources/Resources1.robot

Test Setup  Begin Web Test
Test Teardown  End Web Test

# robot -d results Tests/TC_10_SubscribeNewsletter.robot

*** Variables ***
${BROWSER}
${URL}

*** Test Cases ***
Logged out user can search for products
    [Tags]  Smoke Search
    nopCommerceApp.Search for Products
    nopCommerceApp.Do some Custom Thing

Logged out user can view products
    [Tags]  Smoke View
    nopCommerceApp.Search for Products
    nopCommerceApp.Select Product from Search Results

Logged out user can add product to cart
    [Tags]  Smoke
    nopCommerceApp.Search for Products
    nopCommerceApp.Select Products from Search Results
    nopCommerce.App.Add Product to Cart

