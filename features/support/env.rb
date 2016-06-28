puts "Welcome to the TEST SUITE!"

require 'capybara'
require 'capybara/cucumber'
require 'capybara-screenshot/cucumber'
require 'capybara/rspec'
require 'capybara-screenshot/rspec'
require 'selenium-webdriver'
require 'farmer/step_definitions'
require 'json_spec/cucumber'
require 'chronic'
require 'cucumber-api'
require 'cucumber/api_steps'
#require 'mime-types', '~> 1.16'

def setup
  @driver = Selenium::WebDriver.for :firefox
end

Time.now   #=> Sun Aug 27 23:18:25 PDT 2006

Chronic.parse('tomorrow')
  #=> Mon Aug 28 12:00:00 PDT 2006

Chronic.parse('monday', :context => :past)
  #=> Mon Aug 21 12:00:00 PDT 2006

Chronic.parse('this tuesday 5:00')
  #=> Tue Aug 29 17:00:00 PDT 2006

Chronic.parse('this tuesday 5:00', :ambiguous_time_range => :none)
  #=> Tue Aug 29 05:00:00 PDT 2006

Chronic.parse('may 27th', :now => Time.local(2000, 1, 1))
  #=> Sat May 27 12:00:00 PDT 2000

Chronic.parse('may 27th', :guess => false)
  #=> Sun May 27 00:00:00 PDT 2007..Mon May 28 00:00:00 PDT 2007

Chronic.parse('6/4/2012', :endian_precedence => :little)
  #=> Fri Apr 06 00:00:00 PDT 2012

Chronic.parse('INVALID DATE')
  #=> nil
#require 'headless'


Capybara.default_max_wait_time = 60

Capybara.run_server = false

Capybara.app_host = "http://www.google.com"

Capybara.default_driver = :selenium

Capybara.register_driver :selenium do |app|
	browser = (ENV['browser'] || 'firefox').to_sym
	Capybara::Selenium::Driver.new(app, :browser => browser)
end

Capybara.save_path = "features/screen-shots"

def last_json
  page.source
end

#Capybara.save_and_open_page_path = "features/Screenshots/"

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
