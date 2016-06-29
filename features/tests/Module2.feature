@all
Feature: Module 2 Test Example
         As a Qa Engineer,
         I would like to show how to run a cucumber test
         Using Ruby because I like it so much

    @api @happy
     Scenario: API Tests
         When I send a GET request to "http://localhost:8080"
         Then the response status should be "200"

    @sad
     Scenario: API Tests
         When I send a POST request to "http://localhost:8080"
         Then the response status should be "200"

    @happy @component
     Scenario: Visit Reservation API Upload form and click button
         Given the local app is running
         And I fill text in Name bar
         And I press the upload button
         Then I should see an "error" message


    @happy @upload
     Scenario: Visit Reservation API Upload form and click button
         Given the local app is running
         And I fill text in Name bar
         And I pick a file
         And I press the upload button
         Then I should see an "error" message

    @sad @success
     Scenario: Visit Reservation API Upload form and click button
         Given the local app is running
         And I fill text in Name bar
         Then I press the browse button
         And I pick a file
         And I press the upload button
         Then I should see an "success" message

