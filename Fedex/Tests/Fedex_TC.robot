*** Settings ***
Documentation    This is some basic info about the whole suite
Resource    ../Resources/FedexWeb.robot
Resource    ../Resources/Common.robot
Test Setup    Begin Web Test
Test Teardown    End Web Test

*** Variables ***
${BROWSER}             chrome
${START_URL}           https://www.fedex.com/en-gb/home.html
${POPUP_WINDOW_CLOSE}  xpath=/html/body/div[2]/div/a
${SEARCH_ITEM}         Redelivery
*** Test Cases ***
Logged out user can search for Load.
    [Tags]    Regression
    FedexWeb.Search for Load
Logged out user can search for Word.
    [Tags]    Regression
    FedexWeb.Search for Load
    FedexWeb.Search for Word
Logged out user Search for Language.
    [Tags]    Regression
    FedexWeb.Search for Load
    FedexWeb.Search for Word
    FedexWeb.Click Language Options
Logged out user clicking Language options.
    FedexWeb.Search for Load
    FedexWeb.Search for Word
    FedexWeb.Click Language Options
    FedexWeb.Click Cookies
Logged out user clicking Search
    FedexWeb.Search for Load
    FedexWeb.Search for Word
    FedexWeb.Click Language Options
    FedexWeb.Click Cookies
    click element   ${POPUP_WINDOW_CLOSE}
    sleep    10s
    FedexWeb.Search Item
    sleep     5s
    input text      id=fxg-search-text  ${SEARCH_ITEM}
    sleep  10s
Logged out user clicking Menu Options
    FedexWeb.Search for Load
    FedexWeb.Search for Word
    FedexWeb.Click Language Options
    FedexWeb.Click Cookies
    click element   ${POPUP_WINDOW_CLOSE}
    sleep   5s
    wait until page contains    Sign Up/Log In
    click image      Sign in to Fedex.com
    sleep       5s
    click element       css=#global-login-wrapper > div > div > div > div:nth-child(1) > div > a
    sleep       10s

Logged out user clicking Track Options
    FedexWeb.Search for Load
    FedexWeb.Search for Word
    FedexWeb.Click Language Options
    FedexWeb.Click Cookies
    click element   ${POPUP_WINDOW_CLOSE}
    sleep   5s
    wait until page contains    Sign Up/Log In
    click button    //*[@id="btnSingleTrack"]
    sleep       5s




