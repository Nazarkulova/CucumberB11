Feature: Open MRS tests

  @openMRS
  Scenario: Register a patient
    Given the user logs in to OpenMRS with following credentials
      | username | admin    |
      | password | Admin123 |
    When the user register a new patient with following information:
      | GivenName    | atyra        |
      | FamilyName   | Nazar        |
      | Gender       | Female       |
      | Gender       | 13           |
      | Month        | August       |
      | Year         | 1991         |
      | Address      | 2210 E Devon |
      | PhoneNumber  | 3471239980   |
      | RelationType | Doctor       |
      | RelativeName | Potel        |
    Then the user validates the patient name and familyName
      | GivenName  | amir   |
      | FamilyName | Azamat |


