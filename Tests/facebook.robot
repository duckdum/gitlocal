*** Settings ***
Documentation  Present some information about this test suite
Library  Selenium2Library



*** Variables ***


*** Test Cases ***
Guest must sign in to check out
    [Documentation]  Present some information about this test suite
    [Tags]  Smoke
    Open Browser    http://www.facebook.com   chrome
    Wait Until Page Contains    Email ou telefone
    input text  id=email  eduardor.telecom@gmail.com
    input password  id=pass  kr33d3nc3320
    click button  Entrar
    sleep  5s
    wait until page contains  Página inicial
    input text  xpath=//*[@id="q"]  Jéssica Cardoso
    sleep   4s
    click element  xpath=//*[@id="u_0_c"]/button
    wait until page contains  Analista na empresa Vitta
    click link  Jéssica Cardoso
    wait until page contains    Analista na empresa Vitta
    click link  Mensagem
    sleep  4s
    input text  js_1    1



