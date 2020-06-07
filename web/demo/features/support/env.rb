require 'rspec'
require 'capybara/cucumber'
require 'site_prism'
 
Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, browser: :chrome)
end

Capybara.javascript_driver = :chrome

Capybara.configure do |config|
  config.run_server = false
  Capybara.default_driver = :selenium
  Capybara.page.driver.browser.manage.window.maximize
  config.default_max_wait_time = 10
end


