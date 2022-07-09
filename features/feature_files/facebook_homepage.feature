Feature: "Facebook homepage is loaded successfully"

Scenario: "When user loads Facebook homepage, it loads successfully"

    Given I am on facebook homepage
    When I match the title of the page
    Then It should return true