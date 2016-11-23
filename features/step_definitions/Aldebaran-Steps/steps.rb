require 'cucumber-api/response'
require 'rest-client'
require 'json-schema'


#### SoundCloud ###

Given(/^I play the track "([^"]*)"$/) do |url|
  visit (url)
end

####

Given(/^I go to "([^"]*)" soundcloud page$/) do |user|
  visit ('https://soundcloud.com/' + user)
  expect(page).to have_text "KonQuest Now"
end

Given(/^I play a song$/) do
  find('.sc-button.sc-button-xlarge', match: :first).click
end

Then(/^I wait$/) do
  sleep(40)
end  






#### Reservation API ####

# Background Steps #
#===================#

# Go to App
Given(/^the app is running$/) do
  visit 'http://localhost:8080'
end

# Go to App
Given(/^I am on the PMS API RESERVATION FORM$/) do
  visit 'http://localhost:8080/'
end

# Set headers
Given(/^I send data and take JSON$/) do
  header 'Accept', 'application/json'
  header 'Content-Type', 'multipart/form-data; boundary=----WebKitFormBoundary7MA4YWxkTrZu0gW'
end

# Set headers
Given(/^I am authenticated$/) do
  header 'Authorization', 'Basic a29ib193ZWIwMTpzZWNfa29ib193ZWIwMQ=='
end

# Set headers
Given(/^the user is authorized$/) do
  header 'Authorization', 'Basic a29ib193ZWIwMTpzZWNfa29ib193ZWIwMQ=='
end


# File Upload Steps #
#===================#

# Set the upload form name field
Then(/^I set the field name to "([^"]*)"$/) do |name|
  fill_in('name', :with => name)
end

# Send the POST request
Given(/^I POST file along with:$/) do |body|
response = Unirest.post "http://localhost:8080/reserve", auth:{ :Authorization => "Basic a29ib193ZWIwMTpzZWNfa29ib193ZWIwMQ==" },
                        headers:{ "Accept" => "application/json" },
                        parameters:{ :body => body , :file => File.new("../Automation/features/upload-files/file_blank_file.txt", 'rb') }


end


# ASserting response and JSON Steps #
#===================================#

Then(/^the response code should be "([^"]*)"$/) do |status_code|
    raise %/Expect #{status_code} but was #{@response.code}/ if @response.code != status_code.to_i
end
