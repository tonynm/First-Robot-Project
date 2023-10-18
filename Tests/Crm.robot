*** Settings ***
Documentation    This is some basic info about a whole SUITE
Library          SeleniumLibrary

# Run the script: robot -d Results Tests/Crm.robot
*** Variables ***


*** Test Cases ***
Should be able to add new customer
    [Documentation]                    This is some basic info about the TEST
    [Tags]                             1006    Smoke    Contacts
    Log                                Starting the test case!
    Set Selenium Speed    0.5s
    Open Browser                       https://automationplayground.com/crm/    chrome
    Page Should Contain                Customers Are Priority One!
    Click Link                         login.html
    Page Should Contain                Login
    Input Text                         id=email-id    admin@robotframeworktutorial.com
    Input Text                         id=password    admin
    Click Button                       id=submit-id
    Page Should Contain                Our Happy Customers
    Click Element                      id=new-customer
    Page Should Contain                Add Customer
    Input Text                         id=EmailAddress    janedoe@gmail.com
    Input Text                         id=FirstName    Jane
    Input Text                         id=LastName    Doe
    Input Text                         id=City    San Diego
    Select From List By Value          id=StateOrRegion    CA
    Select Radio Button                gender    female
    Select Checkbox                    name=promos-name
    Click Button                       Submit
    Wait Until Page Contains           Success! New customer added.
    Sleep                              3s
    Close Browser