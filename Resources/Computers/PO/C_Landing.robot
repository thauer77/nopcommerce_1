*** Settings ***
Library  SeleniumLibrary
Resource  /Ressources/Configuration.robot

*** Variables ***
${C_LANDING_ELEMENT} =  id=computers
#${LANDING_NAVIGATION_ELEMENT} =   id=dialog-notifications-success

*** Keywords ***
Navigate To
     #Go To  ${URL}
     Go To  https://demo.nopcommerce.com/computers

Verify Page Loaded
    wait until page contains element  ${C_LANDING_ELEMENT}