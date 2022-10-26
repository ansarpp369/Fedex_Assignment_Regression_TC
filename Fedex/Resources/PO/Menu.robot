*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${MENU_BAR}     xpath=//*[@id="fxg-mobile-menu-btn"]
${SEARCH_TERM}
*** Keywords ***
Menu Item
    click button    ${MENU_BAR}