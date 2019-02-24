require 'indonesian/territory/rails/version'

module Indonesian
  module Territory
    module Rails
      class Error < StandardError; end

      class << self
        def load!
          if rails?
            register_rails_engine
          end
        end

        def rails?
          defined?(::Rails)
        end

        def register_rails_engine
          require "indonesian/territory/rails/engine"
        end
      end
    end
  end
end

Indonesian::Territory::Rails.load!
