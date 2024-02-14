*** Settings ***
Resource        ../../pageObjects/HomePage/home-page.robot
Resource        ../../pageObjects/LoginPage/login-page.robot
Resource        ../../pageObjects/BookPage/book-oneway-page.robot
Test Setup        Open Flight Application
Test Teardown     Close Flight Application


*** Test Cases ***
# with checkbox Day
Book: Round Oneway > From City > To City > Class First > Start Date > End Date > Flight Only > Checkbox Day
    home-page.Click Sign In Button On Home Page
    login-page.Input Username
    login-page.Input Password
    login-page.Click Sign In Button on Login Page
    login-page.Verify User Success To Logged In
    book-oneway-page.Open Book
    Wait Until Element Is Visible    ${round-trip-action}
    book-oneway-page.Choose One-way Flight
    book-oneway-page.Choose From City Newyork
    book-oneway-page.Choose To City London
    book-oneway-page.Choose Class Economy
    book-oneway-page.Choose Start Date
    book-oneway-page.Choose End Date
    book-oneway-page.Choose Flight Only
    book-oneway-page.Choose Checkbox Day
    book-oneway-page.Submit Book
    book-oneway-page.Choose and confirm price
    Wait Until Page Contains Element    xpath=//*[contains(@text, "Your flight is booked. Reservation number is CADX2214")]

# without checkbox Day
Book: Round Oneway > From City > To City > Class First > Start Date > End Date > Flight Only
    home-page.Click Sign In Button On Home Page
    login-page.Input Username
    login-page.Input Password
    login-page.Click Sign In Button on Login Page
    login-page.Verify User Success To Logged In
    book-oneway-page.Open Book
    Wait Until Element Is Visible    ${round-trip-action}
    book-oneway-page.Choose One-way Flight
    book-oneway-page.Choose From City Newyork
    book-oneway-page.Choose To City London
    book-oneway-page.Choose Class Economy
    book-oneway-page.Choose Start Date
    book-oneway-page.Choose End Date
    book-oneway-page.Choose Flight Only
    book-oneway-page.Submit Book
    book-oneway-page.Choose and confirm price
    Wait Until Page Contains Element    xpath=//*[contains(@text, "Your flight is booked. Reservation number is CADX2214")]
