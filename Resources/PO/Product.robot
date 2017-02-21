*** Settings ***
Library  Selenium2Library

*** Keywords ***
Verify Page Loaded
    wait until page contains  Add to Cart
Add to Cart
    click button    id=add-to-cart-button