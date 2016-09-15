@home_screen
Feature: Test for Home screen functionality

	Background: 
		Given I land on home screen

	Scenario: Default values on Home screen is Foot and Centimeter	
		Then Left Unit picker value should be "Foot"
		And Right Unit picker value should be "Centimeter"
		Then Left Unit picker value should be "Inch"
		
	Scenario: Show All button should be disabled at launch
		Then Show All button should be disabled
		When I type "1" in application keyboard
		Then Show All button should be enabled
		

	@units_conversion
	Scenario Outline: Verify default conversion
		When I type "<target>" in application keyboard
		Then I should see result as "<result>"
	Examples:
	| target | result |
	| 1      | 30.48  |
	| 2      | 60.96  |
	| 10     | 304.8  |
	
	
	Scenario: User able to add current conversion to Favorite list
		When I press on Add to favorites icon
		And I press menu icon
		Then I press on Favorite Conversions button
		Then I verify "Favorite conversions" as current screen name
		And I verify "Length" added to Favorite Conversions screen
	
	Scenario Outline: User able to select different values from unit picker
		Then I select "<value>" from left unit picker
		When I type "<target>" in application keyboard
		Then I should see result as "<result>"
	Examples:
		|value| target | result |
		|Inch |  1     | 2.54   |
		|Yard |  1     | 91.44  |
	
	Scenario: User able to convert different unit
		When I press menu icon
		Then I select "Volume" unit
		Then I select "Gallon U.K." from right unit picker
		When I type "1" in application keyboard
		Then I should see result as "0.8327"
	
	Scenario: User able to convert Speed values
		When I press menu icon
		Then I select "Speed" unit
		When I type "1" in application keyboard
		Then I should see result as "1.6093"
		

	Scenario: User able to reverse picker values
		Then I press on reverse picker values button
		Then Left Unit picker value should be "Centimeter"
		And Right Unit picker value should be "Foot"







