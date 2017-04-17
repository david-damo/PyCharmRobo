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
    input text  ${superUserId}    ${username}
    input text  ${superUserPass}  XXXXX
    Set Selenium Speed  ${delay}
    click element  ${Login}

Open Browser To Login NoInput
    #Open Browser        ${server}   ${browser}
    #Maximize Browser Window
    Set Selenium Speed  ${delay}
    click element  ${LoginLink}
    click element  ${Login}
    Set Selenium Speed  ${delay}
    Screenshot.set screenshot directory  C:\\Amy\\
    TAKE SCREENSHOT  LoginNoCredential.jpg
    Page Should Contain  These fields are required to continue.
Go To Manage UserProfile
    Set Selenium Speed  ${delay}
    click element  ${UserProfile}

*** Test Cases ***
InValid LoginNoCredential
    Open Browser To Login NoInput
Valid Login
    Open Browser To Login Page
    #[Teardown]    Close Browser
User Profile
     Go To Manage UserProfile
    #[Teardown]    Close Browser