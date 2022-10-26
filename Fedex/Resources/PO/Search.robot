*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${TOPNAV_SEARCH_BAR}
${SEARCH_TERM}
*** Keywords ***
Search Icon
    click image     Search
Search for Products
    Enter Search Term
    Submit Search

Enter Search Term
    input text    ${TOPNAV_SEARCH_BAR}    ${SEARCH_TERM}

Submit Search
    click button    ${TOPNAV_SEARCH_BUTTON}


