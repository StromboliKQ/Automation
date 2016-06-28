@params
Feature: Search By Param

  @search
  Scenario: Search By Param
    Given I am on the Rakuten USA website
    When I search for something
    Then I search
    Then I should see the correct results
