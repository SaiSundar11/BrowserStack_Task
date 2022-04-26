require 'rubygems'
require 'selenium-webdriver'
require 'rspec'

Before do
    puts "================Before Hook============"
    # Selenium::WebDriver::Chrome::Service.driver_path = "E:/Browserstack/Learning/BrowserStack_Task/chromedriver.exe"

    capabilities = Selenium::WebDriver::Remote::Capabilities.new
    capabilities['browser'] = 'chrome'
    capabilities['browser_version'] = 'latest'
    capabilities['os'] = 'Windows'
    capabilities['os_version'] = '10'
    capabilities['name'] = 'parallel test 1' # Test name
    capabilities['build'] = 'browserstack-build-1' # CI/CD job or build name


    @driver =  Selenium::WebDriver.for(:remote,
        :url => "https://user_name:access_key@hub-cloud.browserstack.com/wd/hub",
        :desired_capabilities => capabilities)

end

After do 
    puts "============After Hook============="

    @driver.quit
end
