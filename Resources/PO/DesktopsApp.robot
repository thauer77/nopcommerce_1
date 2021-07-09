*** Settings ***
Resource  ./PO/Computers.robot
Resource  ./PO/TopNavPage.robot
Resource  ./PO/Desktops.robot

*** Variables ***

*** Keywords ***
Go to Computers_Landing Page
    Computers_Landing.Navigate To
    Computers_Landing.Verify Page Loaded

Go to "Desktops" Page
    TopNav.Select "Desktops" Page
    Desktops.Verify Page Loaded

Validate "Desktops" Page
    Desktops.Validate Page Contents