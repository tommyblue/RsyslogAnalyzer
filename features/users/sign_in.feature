Feature: Sign in
  In order to access the app
  As a valid user
  I want to be able to sign in

  Scenario: User sign in successfully
    Given I am a valid user
    And I am not signed in
    When I sign in with my credentials
    Then I am signed in
    And I am redirected to the dashboard
    And I see a welcome message
