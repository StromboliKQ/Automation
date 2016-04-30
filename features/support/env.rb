puts "Welcome to the TEST SUITE!"

require 'capybara'
require 'capybara/cucumber'
require 'capybara-screenshot/cucumber'
require 'capybara/rspec'
require 'capybara-screenshot/rspec'
require 'selenium-webdriver'


Capybara.run_server = false
Capybara.app_host = "http://www.google.com"
Capybara.default_driver = :selenium

Capybara.register_driver :selenium do |app|
	browser = (ENV['browser'] || 'firefox').to_sym
	Capybara::Selenium::Driver.new(app, :browser => browser)
end

#Capybara.register_driver :chrome do |app|
#  Capybara::Selenium::Driver.new(app, :browser => :chrome)
#end

Capybara.javascript_driver = :chrome