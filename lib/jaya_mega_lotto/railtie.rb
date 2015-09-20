require 'rails'

module JayaMegaLotto
  class Railtie < Rails::Railtie
    initializer "mega_lotto.action_view" do
      ActiveSupport.on_load(:action_view) do
        include JayaMegaLotto::Helper
      end
    end
  end
end
