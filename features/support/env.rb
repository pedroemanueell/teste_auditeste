require 'capybara'
require 'selenium-webdriver'
require 'rspec'
require 'cucumber'
require 'site_prism'
require 'capybara/cucumber'
require 'pry'


Capybara.register_driver :selenium do |app|
	Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.default_driver = :selenium


Capybara.default_max_wait_time = 15