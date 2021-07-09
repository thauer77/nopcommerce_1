*** Settings ***
Documentation  Test Suite "nopCommerce Shop"
Resource  ../Resources/CommonWeb.robot
Resource  ../Resources/Configuration.robot
Resource  ../Resources/nopCommerceApp.robot
Resource  ../Resources/Resources1.robot


Test Setup  Begin Web Test
Test Teardown  End Web Test

# robot -d results Tests/TC_02_CreateCustomer.robot

*** Variables ***
${BROWSER}
${URL}

*** Test Cases ***
Should be able to access "Computers" page
    [Documentation]  Test Case 1
    [Tags]  test1
    Go to Landing page

#Should be able to open 'Log In' menu
#    [Documentation]  Test Case 2
#    [Tags]  test2
#    Go to Landing page
#    Click Link  css=body > div.master-wrapper-page > div.header > div.header-upper > div.header-links-wrapper > div.header-links > ul > li:nth-child(2) > a

Should be able to open 'Register' menu
    [Documentation]  Test Case 2
    [Tags]  test3
    Go to Landing page
    Click Link  css=body > div.master-wrapper-page > div.header > div.header-upper > div.header-links-wrapper > div.header-links > ul > li:nth-child(2) > a
    Sleep  3s
    Click Button  css=body > div.master-wrapper-page > div.master-wrapper-content > div > div > div > div.page-body > div.customer-blocks > div.new-wrapper.register-block > div.buttons > button


Create an account for a new customer
    [Documentation]  Test Case 3
    [Tags]  test4
    Go to Landing page
    # TODO Insert Contact Data
    Click Link  css=body > div.master-wrapper-page > div.header > div.header-upper > div.header-links-wrapper > div.header-links > ul > li:nth-child(2) > a
    Sleep  3s
    Click Button  css=body > div.master-wrapper-page > div.master-wrapper-content > div > div > div > div.page-body > div.customer-blocks > div.new-wrapper.register-block > div.buttons > button
    Sleep  3s
    Select Radio Button  Gender   ${GENDER}
    Sleep  3s
    Input Text  id=FirstName    ${FIRSTNAME}
    Sleep  3s
    Input Text  id=LastName     ${LASTNAME}
    Sleep  3s
    Select from list by label  DateOfBirthDay  ${BIRTHDAY}
    Sleep  5s
    #Select from list by label  DateOfBirthMonth ${BIRTHMONTH}
    #Sleep  3s
    Select from list by label  DateOfBirthYear  ${BIRTHYEAR}
    Sleep  3s
    Input Text  id=Email  ${EMAIL}
    Sleep  3s
    Input Text  id=Company  ${ORGANIZATION}
    Sleep  3s
    Select Checkbox  id:Newsletter
    Checkbox Should Be Selected  id:Newsletter
    Capture Page Screenshot
    Sleep  3s
    Input Text  id=Password  ${PASSWORD}
    Sleep  3s
    Input Text  id=ConfirmPassword   ${PASSWORD}
    Sleep  3s
    click Button  css=#register-button
    Sleep  3s

