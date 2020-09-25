require 'selenium-webdriver'
driver = Selenium::WebDriver.for :chrome
driver.navigate.to 'https://www.google.com'
driver.manage.window.maximize
driver.current_url
current_url = driver.current_url
puts current_url
sleep 2
driver.quit