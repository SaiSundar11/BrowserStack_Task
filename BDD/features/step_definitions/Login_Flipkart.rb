# require 'rubygems'
# require 'selenium-webdriver'
# require_relative "../support/helpers/webdriver_helper.rb"
# require_relative "../pages/flipkart_home_page.rb"

# # You can implement step definitions for undefined steps with these snippets:

# Given('Open the flipkart page') do
#   # pending # Write code here that turns the phrase above into concrete actions

#   constants = Constants.new
#   puts "Open the flipkart page"
#   Selenium::WebDriver::Chrome::Service.driver_path = "E:/Browserstack/Learning/BrowserStack_Task/chromedriver.exe"
#   driver = Selenium::WebDriver::for :chrome
#   sleep 5
#   f_home_page = Flipkart_home_page.new(driver)
#   f_home_page.open_flipkart
#   # f_home_page.close_popup(constants.class::xpath, "//button[text() = '✕']")
#   # Selenium::WebDriver::Chrome::Service.driver_path = "E:/Browserstack/Learning/BrowserStack_Task/chromedriver.exe"
#   # driver = Selenium::WebDriver::for :chrome

#   # # Open flipkart
#   # driver.get("https://www.flipkart.com/")
#   # driver.manage.window.maximize
#   # driver.manage.timeouts.implicit_wait = 10

#   # # Close the login popup
#   # driver.find_element(:xpath, "//button[text() = '✕']").click  

# end

# When('Search for the Mobile') do
#   # pending # Write code here that turns the phrase above into concrete actions
  
#   puts "Search for the mobiles " 

#   # Search for the mobiles
#   # driver.find_element(:name, "q").send_keys"Mobiles"
#   # driver.find_element(:xpath, "//button[@type = 'submit']").click

# end

# When('Search for the Laptop') do
#   # pending # Write code here that turns the phrase above into concrete actions
#   puts "Search for the mobiles"
# end

# Then('Validate the result') do
#   # # pending # Write code here that turns the phrase above into concrete actions
#   # expected_text = "Mobiles"

#   puts "Validate the result"

#   # # capture mobiles text 
#   # t = driver.find_element(:xpath, "//span[text() = 'Mobiles']")
#   # actual_text = t.text
#   # # Validate the text
#   # puts "======#{t.text}======="
#   # # assert_equal expected_text,actual_text
#   # # assert(expected_text == actual_text)

#   # sleep 10
#   # # close the driver
#   # driver.close
# end