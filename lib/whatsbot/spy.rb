require 'selenium-webdriver'

module Whatsbot
  class Spy

    def initialize(config)
      raise 'A configuration must be passed' if config.nil?

      driver = Selenium::WebDriver.for config.driver, profile: "default"
      driver.navigate.to 'https://web.whatsapp.com'
    end

    private

    # private methods here
  end
end
