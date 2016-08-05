require 'selenium-webdriver'

module Whatsbot
  class Spy
    attr_accessor :config

    def initialize(config)
      raise 'A configuration must be passed' if config.nil?

      @config = config
      driver = Selenium::WebDriver.for @config.driver, profile: @config.browser_profile
      driver.navigate.to @config.uri_api
    end

    private

    # private methods here
  end
end
