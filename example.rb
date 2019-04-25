require "active_support"

module Example
  extend ActiveSupport::Autoload

  eager_autoload do
    autoload_under "alpha" do
      autoload :Constant
    end

    autoload_under "omega" do
      autoload :Constant
    end
  end

  eager_load!
end
