require 'rubygems'
require 'selenium-webdriver'

# Configure the path of selenium
Selenium::WebDriver::Chrome::Service.driver_path = "E:/Browserstack/Learning/BrowserStack_Task/chromedriver.exe"
# launch chrome dirver
driver = Selenium::WebDriver.for :chrome

# Open flipkart
driver.get("https://www.flipkart.com/")
driver.manage.window.maximize
driver.manage.timeouts.implicit_wait = 10

# Close the login page
driver.find_element(:xpath, "//button[text() = '✕']").click

# Search for the mobiles
driver.find_element(:name, "q").send_keys"Mobiles"
driver.find_element(:xpath, "//button[@type = 'submit']").click

expected_text = "Mobiles"

# capture mobiles text 
t = driver.find_element(:xpath, "//span[text() = 'Mobiles']")
actual_text = t.text
# Validate the text
puts "======#{t.text}======="
# assert_equal expected_text,actual_text
# assert(expected_text == actual_text)

sleep 10

# close the driver
driver.close