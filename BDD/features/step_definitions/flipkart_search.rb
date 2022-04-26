require 'rubygems'
require 'selenium-webdriver'
require_relative "../support/helpers/webdriver_helper.rb"
require_relative "../pages/flipkart_home_page.rb"
require_relative "../support/hook.rb"
require "rspec"



Given('Open the flipkart page') do
  # pending # Write code here that turns the phrase above into concrete actions

  puts "Open the flipkart page"
  

  sleep 5
  f_home_page = Flipkart_home_page.new(@driver)
  f_home_page.open_flipkart()
  
  # f_home_page.close_popup(constants.class::xpath, "//button[text() = '✕']")

end

When /^Search for the ([a-zA-Z0-9 ]+)$/ do |products|
  # pending # Write code here that turns the phrase above into concrete actions
  
  puts "Search for the mobiles " 
  # Search for the mobiles
  @expected_text = products

#   search_product(products)

  @driver.find_element(:name, "q").send_keys products
  @driver.find_element(:xpath, "//button[@type = 'submit']").click
#   sleep 10
end


Then('Validate the result') do
  # # pending # Write code here that turns the phrase above into concrete actions
  # expected_text = "Mobiles"

  puts "Validate the result"

  # # capture mobiles text 
  t = @driver.find_element(:css, "._10Ermr span")
  actual_text = t.text
  # Validate the text
  puts actual_text
  
  expect(actual_text.downcase.include?(@expected_text.downcase)).to be(true)

  # sleep 10
  # # close the driver
  # driver.close
end