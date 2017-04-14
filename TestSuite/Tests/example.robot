*** Settings ***
Documentation           This is a simple test with Robot Framework
Library                 Selenium2Library
#Library                 C:/Sanjeev/MobileAutomation/TestSuite/Commons/readConfigurations.py
Variables               C:/Sanjeev/MobileAutomation/TestSuite/Resources/envVariables.py
Variables               C:/Sanjeev/MobileAutomation/TestSuite/Resources/objectRepo.py


*** Variables ***
#${SERVER}               http://google.com
#${BROWSER}              Firefox
#${DELAY}                10
#${TestServer}           ${server1}



*** Keywords ***
Open Browser To Login Page
    #Open Browser        ${SERVER}   ${BROWSER}
    Open Browser        ${server}   ${browser}
    Maximize Browser Window
    Set Selenium Speed  ${delay}
    #click element  ${searchTextBox}
    #input text  ${searchTextBox}    "text"
    #Set Selenium Speed  ${DELAY}


*** Test Cases ***
Valid Login
    Open Browser To Login Page
    #[Teardown]    Close Browser