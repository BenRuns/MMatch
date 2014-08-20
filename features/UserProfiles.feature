Feature: Create a searchable profile 

Background: Some makers already exist
	Given that my name is "Ben Patterson" email is "yak@garbage.com" password is "sofake123" and my city is "Seattle" and I am a "Maker" my tag is "BP loves to create" 

Scenario: Make a searchable profile

After I sign up to maker match
Then choose to make a profile.
Then select "viewable" as "public" and press "save"
Then I should be able to search by "name" and see my "tag"

Scenario: Make an unsearchable profile
After I sign up to maker match
Then choose to make a profile.
Then select "viewable" as "private" and press "save"
Then I should be able to search by "name" and not see my "tag"