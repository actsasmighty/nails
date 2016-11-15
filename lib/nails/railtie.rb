module Nails
  class Railtie < Rails::Railtie
    initializer "nails.start" do
      binding.pry
    end
  end
end
