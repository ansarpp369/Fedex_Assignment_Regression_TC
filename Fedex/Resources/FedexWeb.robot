*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/PO/LandingPage.robot
Resource    ../Resources/PO/Search.robot
Resource    ../Resources/PO/Menu.robot
#Resource    ../Resources/PO/Product.robot
#Resource    ../Resources/PO/TopNav.robot
#Resource    ../Resources/PO/Cart.robot
#Resource    ../Resources/PO/SignIn.robot
*** Keywords ***
#Login
    [Arguments]  ${Username}  ${Password}
    SignIn.Login with Valid Credentials  ${Username}  ${Password}

#Search for Products
    LandingPage.Load
    TopNav.Search for Products
    SearchResults.Verify Search Completed

#Select Product from Search Results
    SearchResults.Click Product Link
    Product.Verify Page Loaded

#Add Product to Cart
    Product.Add to Cart
    Cart.Verify Product Added

#Begin Checkout
    Cart.Proceed to Checkout
    SignIn.Verify Page Loaded

Search for Load
    LandingPage.Load
Search for Word
    LandingPage.Verify Page Loaded
Click Language Options
    LandingPage.Language
Click Cookies
    LandingPage.Cookies
Search Item
    Search.Search Icon
Menu Options
    Menu.Menu Item




