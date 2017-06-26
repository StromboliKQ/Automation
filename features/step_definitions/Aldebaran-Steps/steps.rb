#### Tutorial Code below: ####

#require 'cucumber-api/response'
#require 'rest-client'
#require 'json-schema'

#### Example Code: RUBY ####

def setup
chrome_capabilities = Selenium::WebDriver::Remote::Capabilities.chrome()
firefox_capabilities = Selenium::WebDriver::Remote::Capabilities.firefox()
chrome = Selenium::WebDriver.for(:remote, :url => 'http://127.0.0.1:4444/wd/hub', :desired_capabilities => chrome_capabilities)
firefox = Selenium::WebDriver.for(:remote, :url => 'http://127.0.0.1:4444/wd/hub', :desired_capabilities => firefox_capabilities)
end

# => Navigate directly to the track
Given(/^I play the track "([^"]*)"$/) do |url|
  chrome.get(url)
  puts chrome.title

  firefox.get(url)
  puts firefox.title
end

# => Navigate to User Profile page
Given(/^I go to "([^"]*)" soundcloud page$/) do |user|
  visit ('https://soundcloud.com/' + user)
  expect(page).to have_text "KonQuest Now"
end

# => Click the Play button
Given(/^I share a song$/) do
  find('.sc-button.sc-button-xlarge', match: :first).click
end

# => Wait for the song to play
Then(/^I wait$/) do
  sleep(40)
end   
