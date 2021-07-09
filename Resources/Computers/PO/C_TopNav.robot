*** Settings ***

*** Variables ***
${C_TOP_NAV_DESKTOPS_LINK} =  css=div.item-box:nth-child(1) > div:nth-child(1) > h2:nth-child(1) > a:nth-child(1)

*** Keywords ***
Select "Desktops" Page
    click element  ${C_TOP_NAV_DESKTOPS_LINK}
    Sleep  3s



