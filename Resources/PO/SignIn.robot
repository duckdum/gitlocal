*** Settings ***
Library  Selenium2Library

*** Keywords ***
Verify Page Loaded
    wait until page contains  Sign in

Enter Login and Password
    input text  id=ap_email  eduardor.telecom@gmail.com
    input password  id=ap_password  amazon320

Submit Login
    click button  id=signInSubmit