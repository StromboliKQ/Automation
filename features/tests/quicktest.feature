@quick
Feature: Quick test

Scenario: Verify top stories JSON schema
  When I send and accept JSON
  And I send a GET request to "http://www.rakuten.com/"
  Then the response status should be "2000"
