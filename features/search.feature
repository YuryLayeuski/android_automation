Feature: As a User I would like to perform search
	@wip
	Scenario: User able to search by existing unit conversion
		Given I land on home screen
		Then I press on search icon
		When I type "Temperature" to search field
		And I press search icon on soft keyboard
		Then I verify "Temperature" as current unit conversion
		And Left Unit picker value should be "Celsius"
		And Right Unit picker value should be "Fahrenheit"