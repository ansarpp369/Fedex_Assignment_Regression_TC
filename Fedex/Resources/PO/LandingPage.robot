*** Settings ***
Library    SeleniumLibrary

*** Variables ***


*** Keywords ***
Load
    go to   ${START_URL}

Verify Page Loaded
    wait until page contains    Netherlands
Language
    wait until page contains      United Kingdom
    click element      xpath=/html
Cookies
    page should contain element         xpath=//*[@id="fxg-dropdown-signIn"]

    


