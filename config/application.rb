require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Fabuloso
  class Application < Rails::Application
    config.generators do |g|
      g.stylesheets         false
      g.javascripts         true
      g.leosca_controller   :leosca_controller
    end

    config.autoload_paths += %W(#{config.root}/lib/extras)
    I18n.enforce_available_locales = false

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    config.react.addons = true # defaults to false
  end
end
