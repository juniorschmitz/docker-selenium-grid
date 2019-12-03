require 'selenium-webdriver'
require 'capybara'
require 'capybara/cucumber'
require 'site_prism'
require 'pry'
require 'cucumber'
require 'rspec'
require 'faker'

# Capybara.register_driver :selenium_chrome do |app|
#   Capybara::Selenium::Driver.load_selenium
#   browser_options = ::Selenium::WebDriver::Chrome::Options.new.tap do |opts|
#     opts.args << '--start-maximized'
#     opts.args << '--headless'
#   end
#   Capybara::Selenium::Driver.new(app, browser: :chrome, options: browser_options)
# end

# Capybara.default_driver = :selenium_chrome

Capybara.run_server = false
url = 'http://192.168.99.100:4444/wd/hub'
capabilities = Selenium::WebDriver::Remote::Capabilities.chrome
Capybara.app_host = "http://www.google.com"

Capybara.register_driver :remote_chrome do |app|
  Capybara::Selenium::Driver.new(
    app,
    :browser => :remote,
    url: url,
    desired_capabilities: capabilities
  )
end

Capybara.default_max_wait_time = 10
Capybara.default_driver = :remote_chrome
