require 'selenium-webdriver'
driver =Selenium::WebDriver.for :chrome
driver.navigate.to 'https://www.google.com'
driver.manage.window.maximize
search_box = driver.find_element(:name, 'q') 
search_box.send_keys ("iTMS Coaching")
search_box.send_keys(:enter)
title = driver.title
puts title
sleep 5
driver.quit