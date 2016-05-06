puts "Welcome to the TEST SUITE!"

require 'capybara'
require 'capybara/cucumber'
require 'capybara-screenshot/cucumber'
require 'capybara/rspec'
require 'capybara-screenshot/rspec'
require 'selenium-webdriver'
#require 'headless'

Capybara.default_wait_time = 60

Capybara.run_server = false

Capybara.app_host = "http://www.google.com"

Capybara.default_driver = :selenium

Capybara.register_driver :selenium do |app|
	browser = (ENV['browser'] || 'firefox').to_sym
	Capybara::Selenium::Driver.new(app, :browser => browser)
end

#Before('@selenium') do
#  if ENV["SELENIUM_HEADLESS"] == 'true'
#    require "headless"
#    @headless = Headless.new
#    @headless.start
#  end
#end

#After('@selenium') do
#  @headless.destroy if @headless.present?
#end

#Capybara.default_driver = :poltergeist
#Capybara.register_driver :poltergeist do |app|
#    options = {
#        :js_errors => true,
#        :timeout => 120,
#        :debug => false,
#        :phantomjs_options => ['--load-images=no', '--disk-cache=false'],
#        :inspector => true,
#    }
#    Capybara::Poltergeist::Driver.new(app, options)
#end




#Capybara.register_driver :selenium do |app|
#	browser = (ENV['browser'] || 'firefox').to_sym
#	Capybara::Selenium::Driver.new(app, :browser => browser)
#end

#Capybara.register_driver :chrome do |app|
#  Capybara::Selenium::Driver.new(app, :browser => :chrome)
#end

#Capybara.javascript_driver = :chrome

#if ENV['HEADLESS'] == 'true'
#  require 'headless'

#  headless = Headless.new
#  headless.start

#  at_exit do
#    headless.destroy
#  end
#end
