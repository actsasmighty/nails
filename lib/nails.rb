require "nails/config"
require "nails/railtie" if defined?(Rails)
require "nails/version"

module Nails
  def self.config
    config =
    if defined?(Rails)
      begin
        Rails.application.config_for(:nails)
      rescue RuntimeError
      end
    end

    Config.new(config)
  end
end
