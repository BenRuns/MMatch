Feature: Maker Login and Sign Up

  As a user of makermatch
  I want to be able to login
  In order to be able to view my projects and prefered maker spaces


Background: Some makers already exist
	Given the following makers exist

	|user         | first_name | last_name | email              | type      |
	| Makeman     | Bruce      | Whine     | not@really.com     | maker     |
	| Makewoman   | Princess   | Diana     | golden@larriet.com | maker-idea|
	| Awesomeidea | Dude       | Abides    | so@cool.com        | idea      |



Scenario: Signing up with complete data
	Given I am on the home page
	And sign up with complete data with "Email" as "tube@man.com"
	Then I should see "Welcome"


Scenario: Signing up with duplicate email
	Given I am on the home page
	And sign up with complete data with "Email" as "so@cool.com "
	Then I should see not "Welcome"
	Then I should see "There is already an account associated with that email"


