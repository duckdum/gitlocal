*** Settings ***
Library  Selenium2Library

*** Keywords ***
Verify Search Completed
    wait until page contains    "${SEARCH_TERM}"

Click Product Link
    [Documentation]  Clicks on the first product in the search results list
    click link  xpath=//*[@id="result_0"]/div/div[3]/div[1]/a