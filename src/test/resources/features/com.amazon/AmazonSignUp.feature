
@amazon
Feature: Testing Amazon SignUp Functionality

  Background: navigate

  Scenario: Amazon SignUp with DataBase
    When the user clicks the sign in and create your amazon account button
    Then the user validate the header
      | Create account |
    And the user provides the information:
      | atyra            |
      | atyra.@gmail.com |
      | atyra123         |
      | atyra123         |