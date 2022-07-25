Feature: "Facebook homepage is loaded successfully"

Scenario: "When user loads Facebook homepage, it loads successfully"

    Given I am on facebook homepage
    When I match the title of the page
    Then It should return true

Scenario: "Then sign up on facebook"

    Given I am on facebook homepage
    When I click on create new account
    And fill the sign up form
    And click sign up button
    Then I verify the error msg