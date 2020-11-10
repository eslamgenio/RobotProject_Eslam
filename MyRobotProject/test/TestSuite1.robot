*** Settings ***
Library    SeleniumLibrary    

Suite Setup    Log    I am inside Test Suite Setup
Suite Teardown    Log    I am inside Test Suite Teardown
Test Setup    Log    I am inside Test Setup
Test Teardown    Log    I am inside Test Teardown

Default Tags    sanity

*** Test Cases ***
MyFirstTest
    [Tags]    smoke
    Log    I am inside 1st Test   
    # Set Tags    smoke
    
MySecondTest
    Log    I am inside 2nd Test  
    Set Tags    regression1
    
MyThirdTest
    Log    I am inside 3rd Test      
    
# FirstSeleniumCase
    # Open Browser                   https://google.com    chrome
    # Set Browser Implicit Wait      5
    # Input Text                     name=q    Automation
    # Sleep                          2    
    # Press Keys                     name=q        ESCAPE
    # Press Keys                     name=q        ENTER
    # # Close Browser
    # Log                            Test Completed
    

# SampleLoginTest
    # [Documentation]    Sample Login Test
    # # Open Browser       ${URL}    chrome
    # # Set Browser Implicit Wait        5
    # # LoginKW
    # # Click Element      id=welcome
    # # Click Element      link=Logout
    # # Close Browser
    # Log                Test Completed
    # Log                Test was executed by %{USERNAME} on %{os}


    
*** Variables ***
${URL}    https://opensource-demo.orangehrmlive.com/
@{CREDENTIALS}     Admin    admin123
&{LOGINDATA}       username=Admin    password=admin123

*** Keywords ***
LoginKW
    Input Text         id=txtUsername    ${CREDENTIALS}[0]
    Input Password     id=txtPassword    ${LOGINDATA}[password]
    Click Button       id=btnLogin