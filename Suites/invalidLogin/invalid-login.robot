*** Settings ***
Resource             ../../pageObjects/HomePage/home-page.robot
Resource             ../../pageObjects/LoginPage/invalid-login-page.robot
Resource             ../../pageObjects/LoginPage/login-page.robot
Test Setup           Open Flight Application
Test Teardown        Close Flight Application


*** Test Cases ***
Login with Invalid Data
    home-page.Click Sign In Button On Home Page
    invalid-login-page.Input Username
    invalid-login-page.Input Password
    invalid-login-page.Click Sign In Button On Login Page
    Verify User Is Fail To Logged In

Login Without Entering Data
    home-page.Click Sign In Button On Home Page
    invalid-login-page.Visible Element
    invalid-login-page.Click Sign In Button On Login Page
    invalid-login-page.Verify User Is Fail To Logged In

Login With Incorrect Password
    home-page.Click Sign In Button On Home Page
    login-page.Input Username
    invalid-login-page.Input Password
    invalid-login-page.Click Sign In Button On Login Page
    invalid-login-page.Verify User Is Fail To Logged In
