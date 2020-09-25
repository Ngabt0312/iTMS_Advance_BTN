require 'selenium-webdriver'
driver =Selenium::WebDriver.for :chrome
driver.navigate.to 'https://www.google.com'
driver.manage.window.maximize
sleep 2
driver.quit
