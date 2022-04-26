require_relative "../support/constants/constants.rb"
require_relative '../support/helpers/webdriver_helper.rb'

class Flipkart_home_page

    CLOSE_POPUP = [:xpath, "//button[text() = '✕']"].freeze
    SEARCH_PRODUCT = [:name, "q"].freeze
    

    def initialize(driver)
        @driver = driver
        puts "welcome to flipkart"
    end

    def open_flipkart

        visit()
        window_maximize()
        implicitly_wait()
        click_webElement(CLOSE_POPUP)

    end

    def search_product(product_name)

        search_product(SEARCH_PRODUCT).send_keys product_name
        sleep 5
        # @driver.find_element(:xpath, "//button[@type = 'submit']").click
    end
end




