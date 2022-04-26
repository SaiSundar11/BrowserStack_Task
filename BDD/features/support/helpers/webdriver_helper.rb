require 'rubygems'
require 'selenium-webdriver'
require_relative '../constants/constants.rb'
require_relative '../env.rb'


    def visit
        @driver.get(FLIPKART_URL)
    end

    def get_web_element(arr)
       return @driver.find_element(arr[0], arr[1])
    end

    def window_maximize
        @driver.manage.window.maximize
    end
    
    def implicitly_wait
        @driver.manage.timeouts.implicit_wait = 10
    end

    def click_webElement(arr)
        web_click = get_web_element(arr)
        web_click.click
    end

    # def search_product(arr)
    #     return @driver.find_element(arr[0], arr[1])
    # end


