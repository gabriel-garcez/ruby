#require 'capybara/cucumber'
require 'selenium-webdriver'
require 'capybara'
require 'capybara/dsl'
require 'capybara/rspec/matchers'
require 'site_prism'

World(Capybara::DSL)
World(Capybara::RSpecMatchers)

Capybara.configure do |config|
    config.default_driver = :selenium
    config.app_host = 'https://automacaocombatista.herokuapp.com'
    config.default_max_wait_time = 5
end 
