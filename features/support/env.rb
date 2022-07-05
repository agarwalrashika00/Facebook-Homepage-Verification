require "rubygems"
require "selenium-webdriver"
require "test-unit"

driver = Selenium::WebDriver.for :chrome
$driver = driver