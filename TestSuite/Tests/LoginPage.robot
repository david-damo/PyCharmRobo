*** Settings ***
Documentation           This is a simple test with Robot Framework
Library                 Selenium2Library
Library                 Screenshot
Variables               C:/Sanjeev/MobileAutomation/TestSuite/Resources/envVariables.py
Variables               C:/Sanjeev/MobileAutomation/TestSuite/Resources/objectRepo.py


*** Variables ***

*** Keywords ***
Open Browser To Login Page
    #Open Browser        ${server}   ${browser}
    #Maximize Browser Window
    Set Selenium Speed  ${delay}
    #click element  ${LoginLink}
    input text  ${superUserId}    sanjeev.jha77@gmail.com
    input text  ${superUserPass}  XXXX
    Set Selenium Speed  ${delay}
    click element  ${Login}

Open Browser To Login NoInput
    #Open Browser        ${server}   ${browser}
    #Maximize Browser Window
    Set Selenium Speed  ${delay}
    click element  ${LoginLink}
    Set Selenium Speed  ${delay}
    click element  ${Login}
    #Page Should Contain "Oops, that's not a match."
    Page Should Contain  Oops, that's not a match.

*** Test Cases ***
InValid LoginNoCredential
    Open Browser To Login NoInput
    Screenshot.set screenshot directory  C:\\Amy\\
    TAKE SCREENSHOT  LoginNoCredential.jpg
Valid Login
    Open Browser To Login Page
    [Teardown]    Close Browser