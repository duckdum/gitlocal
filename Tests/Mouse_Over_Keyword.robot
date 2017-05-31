*** Settings ***
Library  Selenium2Library

*** Keywords ***

*** Test Cases ***
Teste Locator
    Open Browser    http://www.ebay.com   chrome
    Maximize Browser Window
    Wait Until Page Contains    Fazer compras por categoria
    Sleep   5s
    #Mouse Over  xpath=//*[@id="navigationFragment"]/div/table/tbody/tr/td[6]/a
    Click Link  xpath=//td/a[contains(text(),"Colecionáveis e arte")]
    #Sleep   5s
    #Click Link  xpath=//*[@id="navigationFragment"]/div/table/tbody/tr/td[6]/div[2]/div[1]/ul[2]/li[1]/a
    #Sleep  3s
    Close Browser
 kkkkkkkk
 