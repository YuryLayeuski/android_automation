@side_menu
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











