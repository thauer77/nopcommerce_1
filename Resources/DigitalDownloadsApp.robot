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

Go to DigitalDownloads page
    DigitalDownloads.Navigate To
    DigitalDownloads.Verify Page Loaded

Validate "DigitalDownloads" Page
    DigitalDownloads.Validate Page Contents