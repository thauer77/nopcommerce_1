*** Settings ***
Library  SeleniumLibrary


*** Variables ***

#Personal Data

${URL}   https://demo.nopcommerce.com/
${BROWSER}  chrome
${EMAIL}   thomas5.auer5@capgemini.com
${PASSWORD}  Thomas$18805605201444182
${ORGANIZATION}  COE Automation Integration
${GENDER}  M
${FIRSTNAME}  Thomas
${LASTNAME}  Auer
${BIRTHDAY}  23
${BIRTHMONTH}
${BIRTHYEAR}  1977

#Products
${SEARCH_PRODUCT}  Levi's 511 Jeans
${QUANTITY}  3
${CURRENCY}  Euro
${GIFT_WRAPPING}  Yes [+€8.60]

#Community Poll
${VOTING}   2

#Newsletter
#${NEWSLETTER_MAIL}

*** Keywords ***
Insert email address



