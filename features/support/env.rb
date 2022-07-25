require "rubygems"
require "selenium-webdriver"
require "test-unit"

Before do |scenario|
    @driver = Selenium::WebDriver.for :chrome
end

After do |scenario|
    @driver.close
end