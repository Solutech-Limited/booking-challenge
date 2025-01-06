Feature: Login
    
    Background:
        Given I am on the login page

    Scenario: Login with valid credentials
        When I enter valid credentials 
        Then I am logged in

    Scenario: Login with invalid credentials
        When I enter invalid credentials
        Then I see an error message

    Scenario: Login with empty credentials
        When I enter empty credentials
        Then I see an error message