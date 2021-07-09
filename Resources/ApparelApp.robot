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

Go to Apparel page
    Apparel.Navigate To
    Apparel.Verify Page Loaded

Validate "Apparel" Page
    Apparel.Validate Page Contents