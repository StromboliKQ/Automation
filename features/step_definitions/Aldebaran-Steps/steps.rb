#### Tutorial Code below: ####

#require 'cucumber-api/response'
#require 'rest-client'
#require 'json-schema'

#### Example Code: RUBY ####

# => Navigate directly to the track
Given(/^I play the track "([^"]*)"$/) do |url|
  chrome_capabilities = Selenium::WebDriver::Remote::Capabilities.chrome()
  firefox_capabilities = Selenium::WebDriver::Remote::Capabilities.firefox()
  chrome = Selenium::WebDriver.for(:remote, :url => 'http://localhost:4444/wd/hub', :desired_capabilities => chrome_capabilities)
  firefox = Selenium::WebDriver.for(:remote, :url => 'http://localhost:4444/wd/hub', :desired_capabilities => firefox_capabilities)

  chrome.get(url)
  chrome.manage.timeouts.implicit_wait = 40
  puts chrome.title
  
  firefox.get(url)
  firefox.manage.timeouts.implicit_wait = 40
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
  chrome_capabilities = Selenium::WebDriver::Remote::Capabilities.chrome()
  firefox_capabilities = Selenium::WebDriver::Remote::Capabilities.firefox()
  chrome = Selenium::WebDriver.for(:remote, :url => 'http://localhost:4444/wd/hub', :desired_capabilities => chrome_capabilities)
  firefox = Selenium::WebDriver.for(:remote, :url => 'http://localhost:4444/wd/hub', :desired_capabilities => firefox_capabilities)
  
  wait = Selenium::WebDriver::Wait.new(:timeout => 40)
  
  chrome.quit
  firefox.quit
end   
