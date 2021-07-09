*** Settings ***
#Library  SeleniumLibrary

*** Variables ***
${ELECTRONICS_HEADER_LABEL} =  css=body > div.master-wrapper-page > div.master-wrapper-content > div > div.center-2 > div > div.page-title > h1

*** Keywords ***
Verify Page Loaded
   wait until page contains element  ${ELECTRONICS_HEADER_LABEL}

Validate Page Contents
    ${ElementText} =  get text  ${ELECTRONICS_HEADER_LABEL}
    should be equal as strings  ${ElementText}  Electronics  ignore_case=true