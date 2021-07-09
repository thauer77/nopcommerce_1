*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Keywords ***
Begin Web Test

    open browser  ${URL}
    #maximize browser window

End Web Test
    close all browsers