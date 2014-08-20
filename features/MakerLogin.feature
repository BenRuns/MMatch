
Feature: Login and Sign Up

  As a user of maker match
  I want to be able to login
  In order to be able to view my projects and preferred maker spaces


Background: Some makers already exist
	Given the following users exist

	| user        | first_name | last_name | email              | type      | password       |
	| Makeman     | Bruce      | Whine     | not@really.com     | maker     | password123    |
	| Makewoman   | Princess   | Diana     | golden@larriet.com | maker-idea| password123    |
	| Awesomeidea | Dude       | Abides    | so@cool.com        | idea      | password123    |



Scenario: Signing up with complete data
	Given I am on the home page
	And sign up with complete data with "Email" as "tube@man.com"
	Then I should see "Welcome"


Scenario: Signing up with duplicate email
	Given I am on the home page
	And sign up with complete data with "Email" as "so@cool.com "
	Then I should see not "Welcome"
	Then I should see "There is already an account associated with that email"


