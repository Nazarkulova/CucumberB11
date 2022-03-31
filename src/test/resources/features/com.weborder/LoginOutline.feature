@smokeLoginTest
Feature: Login Functionality for WebOrder Page

  Background:

    Given the user navigates to the WebOrder website

  Scenario: Validate of WebOrder Login Positive Scenario
    When the user provides credentials
    Then the user is on the home page

  Scenario Outline: Validation of WebOrder Login Negative Scenarios
    When the user provides  "<username>" and "<password>"
    Then the user validates the "<errorMessage>" errorMessage
    Examples:
      | username              | password | errorMessage   |
      | guest1@microworks.com | ahmet123 | Sign in Failed |
      | ahmet@gmail.com       | Guest1   | Sign in Failed |
      | ahmet@gmail.com       | ahmet123 | Sign in Failed |
      |                       |          | Sign in Failed |
      |                       | Guest1   | Sign in Failed |
      | guest1@microworks.com |          | Sign in Failed |
      | ahmet                 | @#%@!&*  | Sign in Failed |
      | $#&$^#&^%&#^%         | ahmet123 | Sign in Failed |
      | AHMET@GMAIL.COM       | AHMET12  | Sign in Failed |




