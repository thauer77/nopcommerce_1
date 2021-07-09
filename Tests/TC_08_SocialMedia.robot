*** Settings ***
Documentation  Test Suite "nopCommerce Shop"
Resource  ../Resources/CommonWeb.robot
Resource  ../Resources/Configuration.robot
Resource  ../Resources/nopCommerceApp.robot
Resource  ../Resources/Resources1.robot

Test Setup  Begin Web Test
Test Teardown  End Web Test

# robot -d results Tests/TC_08_SocialMedia.robot

*** Variables ***
${BROWSER}
${URL}

*** Test Cases ***
Follow 'nopCommerce' on social media
    [Documentation]  Test Case 1
    [Tags]  test1
    Go to Landing page
    Sleep  3s
    Click link  xpath://a[text()='Facebook']
    Sleep  5
    Click link  xpath://a[text()='Twitter']
    Sleep  5
    Click link  xpath://a[text()='RSS']
    Sleep  5
    Click link  xpath://a[text()='YouTube']
    Sleep  5