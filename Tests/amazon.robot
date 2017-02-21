*** Settings ***
Documentation  Present some information about this test suite
Resource  ../Resources/AmazonWebGui.robot
Resource  ../Resources/Common.robot
Suite Setup  Insert Testing Data
Test Setup  Begin Web Test
Test Teardown  End Web Test
Suite Teardown  Cleanup Testing Data


*** Variables ***
${BROWSER} =   chrome
${START_URL} =  https://www.amazon.com
${SEARCH_TERM} =    moto 360 sport

*** Test Cases ***
Logged out user should be able to search search for products
    [Documentation]  First Test
    [Tags]  Smoke
    AmazonWebGui.Search for Products
    AmazonWebGui.Do Some Custom Thing   ## keyword feita em python

Logged out user should be able to view a product
    AmazonWebGui.Search for Products
    AmazonWebGui.Select Product from Search Results

Logged out user should be able to add product to cart and begin checkout
    AmazonWebGui.Search for Products
    AmazonWebGui.Select Product from Search Results
    AmazonWebGui.Add Product to Card
    AmazonWebGui.Begin Checkout