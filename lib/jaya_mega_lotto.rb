require "jaya_mega_lotto/version"
require "jaya_mega_lotto/configuration"
require "jaya_mega_lotto/drawing"
require "jaya_mega_lotto/core_ext"

require "jaya_mega_lotto/railtie" if defined?(Rails)

begin
  require "pry"
rescue LoadError
end

module JayaMegaLotto
  class << self
    attr_writer :configuration
  end

  def self.configuration
    @configuration ||= Configuration.new
  end
  
  def self.configure
    yield(configuration)
  end

  def self.reset
    @configuration = Configuration.new
  end
end
