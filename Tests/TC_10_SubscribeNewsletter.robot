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
Should be able to register as a new user via 'Login' menu
    [Documentation]  Test Case 1
    [Tags]  test1
    Go to Landing page
    Sleep  3s
    Input Text  id=newsletter-email  ${EMAIL}
    Sleep  3s
    Click Button  css=#newsletter-subscribe-button
    Capture Page Screenshot