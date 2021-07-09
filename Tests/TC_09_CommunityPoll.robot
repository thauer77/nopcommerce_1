*** Settings ***
Documentation  Test Suite "nopCommerce Shop"
Resource  ../Resources/CommonWeb.robot
Resource  ../Resources/Configuration.robot
Resource  ../Resources/nopCommerceApp.robot
Resource  ../Resources/Resources1.robot

Test Setup  Begin Web Test
Test Teardown  End Web Test

# robot -d results Tests/TC_09_CommunityPoll.robot

*** Variables ***
${BROWSER}
${URL}

*** Test Cases ***
Should be able to vote at the 'Community poll'
    [Documentation]  Test Case 1
    [Tags]  test1
    Go to Landing page
    Sleep  3s
    Click Link  css=body > div.master-wrapper-page > div.header > div.header-upper > div.header-links-wrapper > div.header-links > ul > li:nth-child(2) > a
    Sleep  3s
    Input Text  id=Email  ${EMAIL}
    Sleep  3s
    Input Text  id=Password  ${PASSWORD}
    Sleep  3s
    Select Checkbox  name:RememberMe
    Sleep  3s
    Click Button  css=body > div.master-wrapper-page > div.master-wrapper-content > div > div > div > div.page-body > div.customer-blocks > div.returning-wrapper.fieldset > form > div.buttons > button
    Sleep  3s
    Select Radio Button  pollanswers-1   ${VOTING}
    Sleep  3
    Click Button  css=#vote-poll-1
    Sleep  3
    Capture Page Screenshot