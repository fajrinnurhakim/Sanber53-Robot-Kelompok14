*** Settings ***
Resource        ../base/base.robot
Variables       book-locator.yaml

*** Keywords ***
Open Book
    Click Element    ${book-button}

Choose Round-trip Flight
    Click Element    ${round-trip-action}

Choose From City Chicago
    Click Element    ${from-city-spinner}
    Wait Until Element Is Visible    ${chicago}
    Click Element    ${chicago}

Choose From City Toronto
    Click Element    ${from-city-spinner}
    Wait Until Element Is Visible    ${toronto}
    Click Element    ${toronto}

Choose To City Paris
    Click Element    ${to-city-spinner}
    Wait Until Element Is Visible    ${paris}
    Click Element    ${paris}

Choose To City Ottawa
    Click Element    ${to-city-spinner}
    Wait Until Element Is Visible    ${ottawa}
    Click Element    ${ottawa}

Choose Class First
    Click Element    ${class-spinner}
    Wait Until Element Is Visible    ${first}
    Click Element    ${first}

Choose Class Bussiness
    Click Element    ${class-spinner}
    Wait Until Element Is Visible    ${bussines}
    Click Element    ${bussines}

Choose Start Date
    Click Element    ${start-date}
    Wait Until Element Is Visible    ${date-picker}
    Click Element    ${date-picker}
    Wait Until Element Is Visible    ${year-picker}
    Click Element    ${year-picker}
    Wait Until Element Is Visible    ${01-aug}
    Click Element    ${01-aug}
    Click Element    ${date-ok-button}

Choose End Date
    Click Element    ${start-date}
    Wait Until Element Is Visible    ${date-picker}
    Click Element    ${date-picker}
    Wait Until Element Is Visible    ${year-picker}
    Click Element    ${year-picker}
    Wait Until Element Is Visible    ${31-aug}
    Click Element    ${31-aug}
    Click Element    ${date-ok-button}

Choose Flight Only
    Wait Until Element Is Visible    ${flight-radio-button}
    Click Element    ${flight-radio-button}

Choose Flight and Hotel 
    Wait Until Element Is Visible    ${flight-hotel-radio-button}
    Click Element    ${flight-hotel-radio-button}

Choose Checkbox Day
    Wait Until Element Is Visible    ${checkbox-day}
    Click Element    ${checkbox-day}

Submit Book
    Click Element    ${submit-book-button}

Choose and Confirm Price
    Wait Until Element Is Visible    ${choose-price-button}
    Click Element    ${choose-price-button}
    Click Element    ${confirm-button}