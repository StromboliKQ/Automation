@scfollow
Feature: Soundcloud follow
  As a user
  I would like to log into soundcloud
  And follow a user

  Background: I'm logged into Soundcloud
    Given I login
    Then I should be in the members area

  Scenario: Follow a user
      When I click like
      Then I am following the user
