*** Settings ***
#Library  SeleniumLibrary

*** Variables ***
${DIGITALDOWNLOADS_HEADER_LABEL} =  css=#dialog-notifications-success

*** Keywords ***
Verify Page Loaded
   wait until page contains element  ${DIGITALDOWNLOADS_HEADER_LABEL}

Validate Page Contents
    ${ElementText} =  get text  ${DIGITALDOWNLOADS_HEADER_LABEL}
    should be equal as strings  ${ElementText}  DigitalDownloads  ignore_case=true