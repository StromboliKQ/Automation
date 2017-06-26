World(CapybaraApp)
World(Rack::Test::Methods)
puts "----------------------------------------------"
puts "| STARTING KONQUEST NOW AUTOMATION FRAMEWORK |"
puts "----------------------------------------------"
puts "=> LOADING MEDIA DATA........................."
puts "+=[ MEDIA DATA LOADED SUCCESSFULLY! ]........."
puts "=> CONNECTING TO SOCIAL MEDIA PLATFORMS......."
puts "+=[ SECURE CONNECTION ESTABLISHED! ].........."
puts "+=[ NETWORK READY FOR CONTENT: status=OK ]...."
puts "=> CONNECTING TO SEED SERVER: <BLOGS:107,763>."
puts "+=[ SECURE CONNECTION ESTABLISHED! ].........."
puts "+=[ NETWORK READY FOR CONTENT: status=OK ]...."
puts "=> CONNECTING TO SEED SERVER: <FORUMS:8,194>.."
puts "+=[ SECURE CONNECTION ESTABLISHED! ].........."
puts "+=[ NETWORK READY FOR CONTENT: status=OK ]...."
puts "=> CONNECTING TO EMAIL SERVER: <ACCOUNTS:412>."
puts "+=[ SECURE CONNECTION ESTABLISHED! ].........."
puts "+=[ NETWORK READY FOR CONTENT: status=OK ]...."
puts "THIS WILL POST CONTENT TO ALL NETWORKS ABOVE!."
puts "ARE YOU SURE YOU WISH TO CONTINUE? Y/N ......."
puts "Y............................................."
puts "."
puts ".."
puts "..."
puts "...."
puts "....."

require 'capybara'
require 'capybara/cucumber'
require 'capybara-screenshot/cucumber'
require 'selenium-webdriver'

def setup
    chrome_capabilities = Selenium::WebDriver::Remote::Capabilities.chrome()
    firefox_capabilities = Selenium::WebDriver::Remote::Capabilities.firefox()
    chrome = Selenium::WebDriver.for(:remote, :url => 'http://127.0.0.1:4444/wd/hub', :desired_capabilities => chrome_capabilities)
    firefox = Selenium::WebDriver.for(:remote, :url => 'http://127.0.0.1:4444/wd/hub', :desired_capabilities => firefox_capabilities)

  Capybara.default_driver = :selenium
  Capybara.default_max_wait_time = 600
  Capybara.run_server = false
  Capybara.app_host = "http://www.google.com"
  Capybara.save_path = "features/screen-shots"
end
  
module CapybaraApp
  def app; Capybara.app; end
end

def last_json
  page.source
end

puts "--------------------------"
puts "| LAUNCHING PROMO BLAST: |"
puts "--------------------------"
