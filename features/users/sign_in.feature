Feature: Sign in
  In order to access the app
  As a valid user
  I want to be able to sign in

  Scenario: User sign in successfully
    Given I am not signed in
    And I am a valid user
    When I sign in with my credentials
    Then I see a welcome message
    #When I visit the home page
    #Then I am signed in
