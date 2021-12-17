require 'capybara'
require 'capybara/cucumber'
require 'pry'
require 'rspec'
require 'selenium-webdriver'
#require 'faker'

Capybara.configure do |config|
    config.app_host = 'https://www.saucedemo.com/'
    config.default_driver = :selenium_chrome
    config.default_max_wait_time = 10
end