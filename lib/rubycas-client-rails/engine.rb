module RubyCAS
  class Client
    class Rails
      class Engine < ::Rails::Engine
        config.rubycas = ActiveSupport::OrderedOptions.new

        initializer 'rubycas.initialize', :before => :load_config_initializers do |app|
          RubyCAS::Client::Rails::Filter.setup(config.rubycas)
        end
      end
    end
  end
end
