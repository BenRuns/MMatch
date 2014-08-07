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



Scenario: Signing up with good data
	Given I am on the home page
	And click link Sign Up
	And fill in "First Name" with "Al"
	And fill in "Last Name" with "Harrington"
	And fill in "Username" with "WackyWild"
	And fill in "Email" with "tube@man.com"
	And fill in "Password" with "fake123"
	And fill in "Password Confirmation" with "fake123"
	And check box "agree"
	And hit "submit"
	Then I should see "Welcome Al Harrington"


Scenario: Signing up with duplicate email
	Given I am on the home page
	And click link Sign Up
	And fill in "First Name" with "Al"
	And fill in "Last Name" with "Harrington"
	And fill in "Username" with "WackyWild"
	And fill in "Email" with "so@cool.com "
	And fill in "Password" with "fake123"
	And fill in "Password Confirmation" with "fake123"
	And check box "agree"
	And hit "submit"
	Then I should see "There is already an account associated with that email"


