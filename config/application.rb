require_relative "boot"
require "rails/all"
Bundler.require(*Rails.groups)
module LoginDemo
  class Application < Rails::Application
    config.load_defaults 7.1
    config.secret_key_base = ENV.fetch("SECRET_KEY_BASE") { "development-only-secret-key-change-before-deploy-00000000000000000000000000000000" }
  end
end
