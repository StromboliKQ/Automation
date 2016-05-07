@features
Feature: Cucumber setup
	As a QA Engineer
	I would like to be able to create automated tests
	So that I do not have to click buttons manually


	Scenario: I search Rakuten USA
		Given I am on the Rakuten USA website
		When I search for "Umbrella"
		Then I should be presented with "umbrella"
