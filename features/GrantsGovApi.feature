

Feature: Connecting to an Grants.gov

Given that I am logged in and have created a project



Scenario: PENDING have filled out a complete project and look for grants

	When I am on my completely filled out project1 page
	And I click "check for grants"
	Then I should see "Results from Grants.gov"

