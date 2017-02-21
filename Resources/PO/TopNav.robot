*** Settings ***
Library  Selenium2Library

*** Keywords ***
Search for Products
    input text  id=twotabsearchtextbox  ${SEARCH_TERM}
    click button  Go