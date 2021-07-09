*** Settings ***
Resource  ../Ressources/Configuration.robot
Resource  ./Computers/PO/Desktops.robot
Resource  ./Computers/PO/Landing.robot
Resource  ./Computers/PO/TopNav.robot

*** Variables ***


*** Keywords ***

Go to Landing page
    Landing.Navigate To
    Landing.Verify Page Loaded

Go to Electronics page
    Electronics.Navigate To
    Electronics.Verify Page Loaded

Validate "Electronics" Page
    Electronics.Validate Page Contents