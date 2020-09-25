require 'selenium-webdriver'
driver =Selenium::WebDriver.for :chrome
driver.navigate.to 'https://www.google.com'
driver.manage.window.maximize
page_source = driver.page_source
puts page_source
sleep 2
driver.quit