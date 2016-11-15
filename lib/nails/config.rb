module Nails
  class Config
    def initialize(config = {})
      @config = config
    end

    def port
      @config["port"] || @config[:port]
    end
  end
end
