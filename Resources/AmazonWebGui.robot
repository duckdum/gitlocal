*** Settings ***
Library  Selenium2Library
Library  ../Libraries/MyCustomLibrary.py
Resource  ../Resources/PO/LandingPage.robot
Resource  ../Resources/PO/TopNav.robot
Resource  ../Resources/PO/SearchResult.robot
Resource  ../Resources/PO/Product.robot
Resource  ../Resources/PO/Cart.robot
Resource  ../Resources/PO/SignIn.robot

*** Keywords ***
Do Some Custom Thing
    Do Something Special

Search for Products
    LandingPage.Load
    LandingPage.Verify Page Loaded
    TopNav.Search for Products
    SearchResult.Verify Search Completed

Select Product from Search Results
    SearchResult.Click Product Link
    Product.Verify Page Loaded

Add Product to Card
    Product.Add to Cart
    Cart.Verify Product Added

Begin Checkout
    Cart.Proceed to Checkout
    SignIn.Verify Page Loaded
    SignIn.Enter Login and Password
    SignIn.Submit Login

