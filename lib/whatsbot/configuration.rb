class Whatsbot::Configuration
  class << self
    attr_reader :current
  end

  attr_accessor :uri_api, :driver, :browser_profile, :username

  def self.configure
    raise 'A configuration block must be passed' unless block_given?
    @current = self.new
    yield(@current)
    @current
  end
end