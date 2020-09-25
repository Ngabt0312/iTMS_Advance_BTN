require 'selenium-webdriver'
require 'webdrivers'

driver = Selenium::WebDriver.for :chrome
driver.navigate.to "https://www.google.com.vn/"

sleep 2
driver.quit
