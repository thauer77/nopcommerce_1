*** Settings ***
Library  SeleniumLibrary
Resource  /Ressources/Configuration.robot

*** Variables ***
${LANDING_NAVIGATION_ELEMENT} =  id=bar-notification
#${LANDING_NAVIGATION_ELEMENT} =   id=dialog-notifications-success

*** Keywords ***
Navigate To
     #Go To  ${URL}
     Go To  https://demo.nopcommerce.com/

Click on
    Click element  css=body > div.master-wrapper-page > div.header > div.header-upper > div.header-links-wrapper > div.header-links > ul > li:nth-child(2) > a

Verify Page Loaded
    wait until page contains element  ${LANDING_NAVIGATION_ELEMENT}

Insert Email
    wait until page contains element   ${"email_txt"}
