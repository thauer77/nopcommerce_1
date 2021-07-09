*** Settings ***
#Library  SeleniumLibrary

*** Variables ***
${APPAREL_HEADER_LABEL} =  css=ul.top-menu:nth-child(1) > li:nth-child(3) > a:nth-child(1)

*** Keywords ***
Verify Page Loaded
   wait until page contains element  ${APPAREL_HEADER_LABEL}

Validate Page Contents
    ${ElementText} =  get text  ${APPAREL_HEADER_LABEL}
    should be equal as strings  ${ElementText}  Apparel  ignore_case=true