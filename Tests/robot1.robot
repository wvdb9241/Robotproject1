*** Settings ***
Documentation       Basic information for the entire suite
Library             Browser

*** Variables ***


*** Test Cases ***
Should be able to go to website
    [Documentation]     Basic information about this test, dont forget the capitals
    [Tags]              Smoke
    log                 starting my testcase
    open browser        https://automationplayground.com/crm/       Chromium    true
    wait until network is idle
    close browser

*** Keywords ***
