@main_menu
Feature: As a user I would like to convert my Units
	
	Scenario: When I tap on menu icon, I should see left side menu
		Given I land on home screen
		When I press menu icon
		Then I should see left side menu

	Scenario: I should be able to open My conversions screen
		Given I land on home screen
		When I press menu icon
		And I press on My Conversions 
		Then I land on My Conversions screen
		@wip
	Scenario: I should be able to see conversion history and cleanup results
		Given I land on home screen
		When I press menu icon
		And I press on history
		Then I verify "History" as current screen name 
		And I should see "No history right now" text
		Then I press menu icon
		Then I select "Length" unit
		When I type "1" in application keyboard
		When I press menu icon
		And I press on history
		Then I verify "History" as current screen name
		And I verify "Length" as 1st result in history list
		Then I press X to remove 1st result in history list
		And I should see "No history right now" text








