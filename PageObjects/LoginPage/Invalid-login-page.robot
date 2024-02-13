*** Settings ***
Resource                               ../base/base.robot
Variables                              login-locator.yaml

*** Keywords ***
Input Username
    Wait Until Element Is Visible      locator=${username_input}
    Input Text                         locator=${username_input}    text=TestUser

Input Password
    Wait Until Element Is Visible      locator=${password_input}
    Input Text                         locator=${password_input}    text=TestPassword

Visible Element
    Wait Until Element Is Visible      locator=${username_input}
    Wait Until Element Is Visible      locator=${password_input}
Click Sign In Button On Login Page
    Click Element                      locator=//android.widget.Button[@resource-id="com.example.myapplication:id/signIn"]

Verify User Is Fail To Logged In
    Wait Until Page Contains           text=Invalid username/password

