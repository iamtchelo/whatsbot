require 'selenium-webdriver'

module Whatsbot
  class Spy

    WHATSAPP_URL = 'https://web.whatsapp.com'
    BROWSER_PROFILE = 'default'

    def initialize(config)
      raise 'A configuration must be passed' if config.nil?

      driver = Selenium::WebDriver.for config.driver, profile: BROWSER_PROFILE
      driver.navigate.to WHATSAPP_URL
    end

    private

    # private methods here
  end
end
