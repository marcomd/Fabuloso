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

    config.autoload_paths += %W(#{config.root}/lib/extras #{config.root}/app/models/ckeditor)
    config.assets.precompile += Ckeditor.assets
    config.assets.precompile += %w( ckeditor/* )
    I18n.enforce_available_locales = false

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    config.react.addons = true # defaults to false

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    config.time_zone = 'Rome'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    config.i18n.default_locale = :it
  end
end
