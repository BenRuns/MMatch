Feature: Login with twitter handle

  As a person who doesn't want to create a new password
  So that I can fill my brain with other things
  I want to use twitter to log in to Maker Match

Background: Spaces in the database

  Given that I have an account in Seattle with two ongoing projects

  Given the following spaces exist:

  | Name         | City      | State        | 3Dprinter | lasercutter |
  | Jigsaw       | Seattle   | Washington   |   nil     | 1           |
  | Maker House  | Seattle   | Washington   |   2       | 0           |
  | Maker Place  | New York  | New York     |   10      | 1           |


Scenario: Logging in while logged in to twitter
  Given I go to the home page and logged in to twitter 
  And  I click "Login"
  And  I press "Twitter"
  Then I should see "Welcome"
  And I should see 2 "Projects"
  And I should see "Jigsaw"
  And I should not see "Maker Place"

Scenario: Logging in withou being logged in 
  Given I go to the home page and not logged in to twitter 
  And  I click "Login"
  And  I press "Twitter"
  Then I should not see "Welcome"
  And I should see "please enter your username and password"

