*** Settings ***
#Library  SeleniumLibrary

*** Variables ***
${BOOKS_HEADER_LABEL} =  css=.breadcrumb > ul:nth-child(1)
${BOOKS_ADD_TO_SHOPPING_CART_BUTTON} =  css=body > div.master-wrapper-page > div.master-wrapper-content > div > div.center-2 > div > div.page-body > div.products-c

*** Keywords ***
Verify Page Loaded
   wait until page contains element  ${BOOKS_HEADER_LABEL}

Validate Page Contents
    ${ElementText} =  get text  ${BOOKS_HEADER_LABEL}
    should be equal as strings  ${ElementText}  Books  ignore_case=true

Add to Cart
    # TODO COMPLETE Move this keyword into a variable
    Click Button  ${BOOKS_ADD_TO_SHOPPING_CART_BUTTON}
