*** Settings ***
Library   SeleniumLibrary
Resource  ../PO/Landing.robot
Resource  ../PO/TopNav.robot
Resource  ../Resources/CommonWeb.robot
Resource  ../Resources/Configuration.robot
Resource  ../Resources/nopCommerceApp.robot
Resource  ../Resources/Resources1.robot

# robot -d results Tests/SearchResults.robot
*** Keywords ***
Do Some Custom Thing
    Do Something Special


Verify Search Completed
    Wait Until Page Contains  results for
    [Return]  Found it!

Click Product Link
    [Documentation]   Clicks on the first prduct in the search results list
    Click Link  css=body > div.master-wrapper-page > div.master-wrapper-content > div > div.center-2 > div > div.page-body > div.search-results > div > div.products-wrapper > div > div > div:nth-child(1) > div > div.picture > a > img
