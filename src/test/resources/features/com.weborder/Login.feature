

Feature: Login Functionality for WebOrder Page

Background:

  Given the user navigates to the WebOrder website
  @smoke @regression
  Scenario: Validate of WebOrder Login Positive Scenario
    When the user provides credentials
    Then the user is on the home page

  Scenario: Validation of WebOrder Login Negative Scenario 1
    When the user provides correct username and wrong password
    Then the user validates the "Sign in Failed" errorMessage


  Scenario: Validation of WebOrder Login Negative Scenario 2
    When the user provides wrong "atyra" and "nazar"
    Then the user validates the "Sign in Failed" errorMessage


  Scenario: Validation of WebOrder Login Negative Scenario 3
    Given the user navigates to the WebOrder website again
    When the user provides empty username and password
    Then the user validates the "Sign in Failed" errorMessage

