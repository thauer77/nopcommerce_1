*** Settings ***
Library  ../Libraries/MyCustomLibrary.py
Resource  Ressources/Configuration.robot
Resource  ./PO/Computers.robot
Resource  ./PO/Electronics.robot
Resource  ./PO/Landing.robot
Resource  ./PO/TopNav.robot


*** Variables ***


*** Keywords ***
Go to Landing page
    Landing.Navigate To
    Landing.Verify Page Loaded

Click on Browser
    TopNav.Select "Login" page
    Login.Verify Page Loaded

Go to "Computers" page
   TopNav.Select "Computers" page
   Computers.Verify Page Loaded

Validate "Computers" Page
    Computers.Validate Page Contents

Go to "Electronics" page
    TopNav.Select "Electronics" page
    Electronics.Verify Page Loaded

Validate "Electronics" page
    Electronics.Validate Page Contents

Go to "Apparel" page
    TopNav.Select "Apparel" page
#    Apparel.Verify Page Loaded

Go to "Digital Downloads" page
    TopNav.Select "Digital Downloads" page

Go to "Books" page
    TopNav.Select "Books" page
#    Apparel.Validate Page Contents

Go to "Jewelry" page
    TopNav.Select "Jewelry" page

Go to "Gift Cards" page
    TopNav.Select "Gift Cards" page

Search for Products
    LandingPage.Load
    LandingPage.Verify Page Loaded
    TopNav.Search for Products
    ${ReturnedInfo} =  SearchResults.Verify Search Completed
    Log  ${ReturnedInfo}

Select Product from Search Results
    SearchResults.Click Product Link
    Product.Verify Page Loaded

