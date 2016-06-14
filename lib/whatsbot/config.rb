require 'selenium-webdriver'

module Whatsbot
  module Config
    # Whatsweb
    URI_API = 'http://web.whatsapp.com'

    # The driver that will open, for example: Firefox, Chrome
    DRIVER = :firefox

    # Your browser profile
    BROWSER_PROFILE = 'default'

    # User that will spy on
    DEFAULT_USERNAME = ENV['USERNAME'] ||= ''
  end
end
