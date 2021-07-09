*** Settings ***
Documentation  Test Suite "nopCommerce Shop"
Resource  ../Resources/CommonWeb.robot
Resource  ../Resources/Configuration.robot
Resource  ../Resources/nopCommerceApp.robot
Resource  ../Resources/Resources1.robot


Test Setup  Begin Web Test
Test Teardown  End Web Test

# robot -d results Tests/TC_01_nopCommerce_Shop.robot

*** Variables ***
${BROWSER}
${URL}

*** Test Cases ***
#Should be able to access "Computers" page
#    [Documentation]  Test Case 1
#    [Tags]  test1
#    Go to Landing page
#    Go to "Computers" page

#"Computers" page should match requirements
#    [Documentation]  Test Case 2
#    [Tags]  test2
#    Go to Landing page
#    Go to "Computers" page
#    Validate "Computers" page

Should be able to access "Electronics" page
    [Documentation]  Test Case 3
    [Tags]  test3
    Go to Landing page
    Go to "Electronics" page

"Electronics" page should match requirements
    [Documentation]  Test Case 4
    [Tags]  test4
    Go to Landing page
    Go to "Electronics" page
    Validate "Electronics" page

Should be able to access "Apparel" page
    [Documentation]  Test Case 5
    [Tags]  test5
    Go to Landing page
    Go to "Apparel" page

Should be able to access "Digital Downloads" page
    [Documentation]  Test Case 6
    [Tags]  test6
    Go to Landing page
    Go to "Digital Downloads" page

Should be able to access "Books" page
    [Documentation]  Test Case 7
    [Tags]  test7
    Go to Landing page
    Go to "Books" page

Should be able to access "Jewelry" page
    [Documentation]  Test Case 8
    [Tags]  test 8
    Go to Landing page
    Go to "Jewelry" page

Should be able to access "Gift Cards" page
    [Documentation]  Test Case 9
    [Tags]  test 9
    Go to Landing page
    Go to "Gift Cards" page
