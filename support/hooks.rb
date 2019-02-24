require 'selenium-webdriver'


Before do

    firefoxProfile = Selenium::WebDriver::Firefox::Profile.new
    firefoxProfile['webdriver.firefox.useExisting'] = true
    @browser = Selenium::WebDriver.for :firefox, :profile => firefoxProfile

end

After do
  @browser.close
end
