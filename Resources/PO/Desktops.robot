*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${DESKTOPS_HEADER_LABEL} =  css= body > div.master-wrapper-page > div.header-menu > ul.top-menu.notmobile > li:nth-child(1) > a

*** Keywords ***
Verify Page Loaded
    wait until page contains element  ${DESKTOPS_HEADER_LABEL}

Validate Page Contents
    #element text should be  ${COMPUTERS_HEADER_LABEL} Computers
    ${ElementText} =  get text  ${DESKTOPS_HEADER_LABEL}
    should be equal as strings  ${ElementText}  Desktops  ignore_case=true

