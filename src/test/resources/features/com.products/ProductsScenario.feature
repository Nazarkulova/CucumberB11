Feature: Validation of Products

  @productproject
  Scenario: Validation of New Product Creation
    Given The user navigates to product website homepage and click orderButton
    When the user enters the product information "MyMoney" and "4"
    And the user enters the address information "Techtorial" , "2200 E Devon", "Des PLaines", "IL", "60018"
    And the user enters the card information "Visa" , "441123456789", "03/26"
    Then the user validates success message
   # And the user validates product details "Techtorial" ,"MyMoney", "4", "2200 E Devon", "Ders PLaines", "IL", "60018", "visa", "441123456789","03/26"

  @productprojectOutline
  Scenario Outline: Validation of New Product Creation 1
    Given The user navigates to product website homepage and click orderButton
    When the user enters the product information "<productName>" and "<quantity>"
    And the user enters the address information "<customerName>" , "<street>", "<city>", "<state>", "<zipcode>"
    And the user enters the card information "<cardType>" , "<cardNumber>", "<expireDate>"
    Then the user validates success message
    And the user validates product details "<customerName>" ,"<productName>", "<quantity>", "<street>", "<city>", "<state>", "<zipcode>", "<cardType>", "<cardNumber>", "<expireDate>"
    Examples:
      | productName | quantity | customerName | street       | city        | state | zipcode | cardType         | cardNumber    | expireDate |
      | MyMoney     | 4        | Techtorial   | 2210 E Devon | Des Laines  | IL    | 60018   | Visa             | 441123456789  | 03/26      |
      | FamilyAlbum | 6        | Ahmet        | 456 E Devon  | Michigan    | MO    | 63222   | MasterCard       | 441123768903  | 03/22      |
      | ScreenSaver | 2        | Gino         | 2210 Cotton  | Monroeville | PA    | 15146   | American Express | 2200112356789 | 09/26      |
      | MyMoney     | 4        | Techtorial   | 2210 E Devon | Des Laines  | IL    | 60018   | Visa             | 441123456789  | 03/26      |
      | FamilyAlbum | 6        | Ahmet        | 456 E Devon  | Michigan    | MO    | 63222   | MasterCard       | 441123768903  | 03/22      |
      | ScreenSaver | 2        | Gino         | 2210 Cotton  | Monroeville | PA    | 15146   | American Express | 2200112356789 | 09/26      |
      | MyMoney     | 4        | Techtorial   | 2210 E Devon | Des Laines  | IL    | 60018   | Visa             | 441123456789  | 03/26      |
      | FamilyAlbum | 6        | Ahmet        | 456 E Devon  | Michigan    | MO    | 63222   | MasterCard       | 441123768903  | 03/22      |
      | ScreenSaver | 2        | Gino         | 2210 Cotton  | Monroeville | PA    | 15146   | American Express | 2200112356789 | 09/26      |
      | MyMoney     | 4        | Techtorial   | 2210 E Devon | Des Laines  | IL    | 60018   | Visa             | 441123456789  | 03/26      |
      | FamilyAlbum | 6        | Ahmet        | 456 E Devon  | Michigan    | MO    | 63222   | MasterCard       | 441123768903  | 03/22      |
      | ScreenSaver | 2        | Gino         | 2210 Cotton  | Monroeville | PA    | 15146   | American Express | 2200112356789 | 09/26      |
