*** Settings ***
Documentation  Test Suite "nopCommerce Shop"
Resource  ../Resources/CommonWeb.robot
Resource  ../Resources/Configuration.robot
Resource  ../Resources/nopCommerceApp.robot
Resource  ../Resources/Resources1.robot

Test Setup  Begin Web Test
Test Teardown  End Web Test

# robot -d results Tests/TC_04_ChangeCurrency.robot

*** Variables ***
${BROWSER}
${URL}

*** Test Cases ***

Should be able to change the currency
    [Documentation]  Test Case 1
    [Tags]  test1
    Go to Landing page
    Sleep  3s
    Select From List By Label  id=customerCurrency  ${CURRENCY}
    Sleep  3s