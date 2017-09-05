module Whatsbot
  class Configuration
    class << self
      attr_reader :current
    end

    attr_accessor :driver

    def self.configure
      raise 'A configuration block must be passed' unless block_given?
      @current = self.new
      yield(@current)

      case @current.driver
      when :firefox_nightly
          Selenium::WebDriver::Firefox::Binary.path = "/Applications/FirefoxNightly.app/Contents/MacOS/firefox-bin"
          @current.driver = :firefox
      end

      @current
    end
  end
end
