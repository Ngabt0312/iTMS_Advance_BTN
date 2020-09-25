require 'selenium-webdriver'
driver =Selenium::WebDriver.for :chrome
driver.navigate.to 'https://l.facebook.com/l.php?u=https%3A%2F%2Fitmscoaching.herokuapp.com%2Fform%3Ffbclid%3DIwAR2yYXIqWOPlbqTJDcGTV7YlAjf10L_5pWgVIqYJBlqiHpr2pHBrI9RcdKg&h=AT189QbfF2oN2C141bgqKBaH76fmzcVLiReJYmxMTFq7EBrfmlytEWqigx5H1bdvN703UsmyN-o7yEwqUNrSDjlWJJqgE4jW1z_snvilzhhBUtjAJFOU6mX1Wxd2BYovC9SR4NG-0AEYtqy_21by&__tn__=-UK-R&c[0]=AT2tDolX_VkJotIXZ1919crCS49aPtvRK7GiZ6NDgknOIdNDRg9r84QE7UKtt9ygv76Tr5ckQyR2s2hOq34Dh4lFdEaDPyccUxoD-hO0dM-sh4hIkoRsirM7Sobklij_sibFZT9mxlIB3YanFkDRW28r-M17s_TZ8fXIqBggwcH-A3zGqzlZrpEOisx7h4EUWBtKyok'
driver.manage.window.maximize
search_box = driver.find_element(:id, 'first-name') 
search_box.send_keys ("iTMS")
search_box = driver.find_element(:id, 'last-name') 
search_box.send_keys ("Huấn luyện viên")
search_box = driver.find_element(:id, 'job-title') 
search_box.send_keys ("QA")
checkbox = driver.find_element(:id, "radio-button-3")
checkbox.click
checkbox = driver.find_element(:id, "checkbox-1")
checkbox.click
options = driver.find_element(:id, "select-menu")
select_object = Selenium::WebDriver::Support::Select.new(options)
select_object.select_by(:value, "2")
search_box = driver.find_element(:id, 'datepicker') 
search_box.send_keys ("27/10/2025")
driver.find_element(:xpath, "//div[@class='col-sm-4 col-sm-offset-2']//a[@class='btn btn-lg btn-primary']").click
sleep 5
driver.quitn