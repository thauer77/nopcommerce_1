*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${TOP_NAV_COMPUTERS_LINK} =  css=body > div.master-wrapper-page > div.header-menu > ul.top-menu.notmobile > li:nth-child(1) > a
#${SUBPAGE_COMPUTERS_DESKTOPS_LINK} =  css=div.item-box:nth-child(1) > div:nth-child(1) > h2:nth-child(1) > a:nth-child(1)
${TOP_NAV_ELECTRONICS_LINK} =  css=body > div.master-wrapper-page > div.header-menu > ul.top-menu.notmobile > li:nth-child(2) > a
${TOP_NAV_APPAREL_LINK} =  css=body > div.master-wrapper-page > div.header-menu > ul.top-menu.notmobile > li:nth-child(3) > a
${TOP_NAV_DIGITALDOWNLOADS_LINK} =  css=body > div.master-wrapper-page > div.header-menu > ul.top-menu.notmobile > li:nth-child(4) > a
${TOP_NAV_BOOKS_LINK} =  css=ul.top-menu:nth-child(1) > li:nth-child(5) > a:nth-child(1)
${TOP_NAV_JEWELRY_LINK} =  css=ul.top-menu:nth-child(1) > li:nth-child(6) > a:nth-child(1)
${TOP_NAV_GIFTCARDS_LINK} =  css=ul.top-menu:nth-child(1) > li:nth-child(7) > a:nth-child(1)
${LOGIN} =  css=body > div.master-wrapper-page > div.header > div.header-upper > div.header-links-wrapper > div.header-links > ul > li:nth-child(2) > a
${"email_txt"}  =
*** Keywords ***
Select "Computers" Page
    click element  ${TOP_NAV_COMPUTERS_LINK}
    Sleep  3s

Select "Login"
    click element  ${LOGIN}
    Sleep  3s

Select "Electronics" Page
    click element  ${TOP_NAV_ELECTRONICS_LINK}
    Sleep  3s

Select "Apparel" Page
    click element  ${TOP_NAV_APPAREL_LINK}
    Sleep  3s

Select "DigitalDownloads" Page
    click element  ${TOP_NAV_DIGITALDOWNLOADS_LINK}
    Sleep  3s

Select "Books" Page
   click element  ${TOP_NAV_BOOKS_LINK}
   Sleep  3s

Select "Jewelry" Page
    click element  ${TOP_NAV_JEWELRY_LINK}
     Sleep  3s

Select "Gift Cards" Page
    click element  ${TOP_NAV_GIFTCARDS_LINK}

Select "Email"
    set Variable  ${"email_txt"}

Submit Search
    Click Button  xpath=#small-search-box-form > button




