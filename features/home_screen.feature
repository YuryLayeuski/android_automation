Feature: Test for Home screen functionality

	Scenario: Default values on Home screen is Foot and Centimeter
		Given I land on home screen
		Then Left Unit picker value should be "Foot"
		And Right Unit picker value should be "Centimeter"
		Then Left Unit picker value should be "Inch"

	Scenario: Show All button should be enabled at launch
		Given I land on home screen
		Then Show All button should be enabled
		When I press on Clear button
		Then Show All button should be disabled
	@units_conversion
	Scenario Outline: Verify default conversion
		Given I land on home screen
		When I type "<target>" to target text field
		Then I should see result as "<result>"
	Examples:
	| target | result |
	| 1      | 30.48  |
	| 2      | 60.96  |
	| 10     | 300.80 |
	
	@working_progress
	Scenario: User able to add current conversion to Favorite list
		Given I land on home screen
		When I press on Add to favorites icon
		And I press menu icon
		Then I press on Favorite Conversions button
		And I verify "Length" added to Favorite Conversions screen


