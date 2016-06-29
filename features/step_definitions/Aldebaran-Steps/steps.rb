require 'cucumber-api/response'
require 'rest-client'
require 'json-schema'

#### Reservation Feature ####

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
Given(/^I POST file and:$/) do |body|
response = Unirest.post "http://localhost:8080/reserve",
                        headers:{ "Accept" => "application/json" },
                        parameters:{ :metadata => 12, :file => File.new("/Users/britian.hammond/code/Automation/features/upload-files/file_blank_file.txt", 'rb') }
end
