Feature: Test for Home screen functionality

	Scenario: Default values on Home screen is Foot and Centimeter
		Given I land on home screen
		Then Left Unit picker value should be "Foot"
		And Right Unit picker value should be "Centimeter"
		Then Left Unit picker value should be "Inch"
		
	Scenario: Show All button should be disabled at launch
		Given I land on home screen
		Then Show All button should be disabled
		When I type "1" in application keyboard
		Then Show All button should be enabled
		

	@units_conversion
	Scenario Outline: Verify default conversion
		Given I land on home screen
		When I type "<target>" in application keyboard
		Then I should see result as "<result>"
	Examples:
	| target | result |
	| 1      | 30.48  |
	| 2      | 60.96  |
	| 10     | 304.8  |
	
	
	Scenario: User able to add current conversion to Favorite list
		Given I land on home screen
		When I press on Add to favorites icon
		And I press menu icon
		Then I press on Favorite Conversions button
		Then I verify "Favorite conversions" as current screen name
		And I verify "Length" added to Favorite Conversions screen
	
	Scenario Outline: User able to select different values from unit picker
		Given I land on home screen
		Then I select "<value>" from left unit picker
		When I type "<target>" in application keyboard
		Then I should see result as "<result>"
	Examples:
		|value| target | result |
		|Inch |  1     | 2.54   |
		|Yard |  1     | 91.44  |
	
	Scenario: User able to convert different unit
		Given I land on home screen
		When I press menu icon
		Then I select "Volume" unit
		Then I select "Gallon U.K." from right unit picker
		When I type "1" in application keyboard
		Then I should see result as "0.8327"
	@wip
	Scenario: User able to convert Speed values
		Given I land on home screen
		When I press menu icon
		Then I select "Speed" unit
		When I type "1" in application keyboard
		Then I should see result as "1.6093"









