*** Settings ***
Documentation  Test Suite "nopCommerce Shop"
Resource  ../Ressources/CommonWeb.robot
Resource  Ressources/Configuration.robot
Resource  ../Ressources/nopCommerceApp.robot
Resource  ./PO/Computers.robot

Test Setup  Begin Web Test
Test Teardown  End Web Test

# robot -d results Tests/nopCommerce_Computers.robot

*** Variables ***
${BROWSER}
#${URL_COMPUTERS}

*** Test Cases ***
Should be able to access "Desktops" page
    [Documentation]  Test Case 1
    [Tags]  test 1
    C_TopNav.Select "Desktops" page
    Desktops.Verify Page Loaded
