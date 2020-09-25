require 'selenium-webdriver'
driver =Selenium::WebDriver.for :chrome
driver.navigate.to 'https://www.google.com'
driver.manage.window.maximize
title = driver.title
puts title
sleep 2
driver.quit