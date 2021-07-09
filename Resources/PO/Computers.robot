*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${COMPUTERS_NAVIGATION_ELEMENT} =  css=ul.top-menu:nth-child(1) > li:nth-child(1) > a:nth-child(1)
${SUBPAGE_COMPUTERS_DESKTOPS_LINK} =  css=div.item-box:nth-child(1) > div:nth-child(1) > h2:nth-child(1) > a:nth-child(1)

*** Keywords ***
Select "Desktops" Page
    click element  ${SUBPAGE_COMPUTERS_DESKTOPS_LINK}
    Sleep  3s


