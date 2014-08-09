

Feature: Login with twitter handle

  As a person who doesn't want to create a new password
  So that I can fill my brain with other things
  I want to use twitter to login to Maker Match

Scenario: Logging in with twitter

  Given I go to the home page 
  And  I click "Sign in with Twitter"
  Then I should see "Welcome"
  And I should not see "There was an error logging in"

Scenario: Logging in without being logged in 
  Given I go to the home page 
  And have not logged in to "Twitter" 
  And  I click "Login"
  Then I should not see "Welcome"
  And I should see "please enter your username and password"

Scenario: Logging in halfway
  Given I go to the home page 
  And have logged in to "Twitter" 
  And  I click "Login" and I press "Twitter"
  And  I click "Cancel"
  Then I should not see "Welcome"
  And I should see "There was an error logging in"


