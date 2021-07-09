*** Settings ***
Resource  Ressources/Configuration.robot
Resource  ./Computers/PO/Desktops.robot
Resource  ./Computers/PO/Landing.robot
Resource  ./Computers/PO/TopNav.robot


*** Variables ***


*** Keywords ***

Go to Landing page
    Landing.Navigate To
    Landing.Verify Page Loaded

Go to Computers page
    Computers.Navigate To
    Computers.Verify Page Loaded

Validate "Computers" Page
    Computers.Validate Page Contents



