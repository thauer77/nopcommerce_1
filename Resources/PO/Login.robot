*** Settings ***
Library  SeleniumLibrary
Resource  /Ressources/Configuration.robot

*** Variables ***

#${LANDING_NAVIGATION_ELEMENT} =   id=dialog-notifications-success

*** Keywords ***
Navigate To
     #Go To  ${URL}
     Go To  https://demo.nopcommerce.com/

Verify Page Loaded
    wait until page contains element  ${LANDING_NAVIGATION_ELEMENT}

Navigate To
    Go To