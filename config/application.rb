require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module TodoRails
  class Application < Rails::Application
    config.active_record.raise_in_transactional_callbacks = true
    I18n.enforce_available_locales = true
    config.i18n.default_locale = :ja
    config.i18n.fallbacks = { ja: :en }
    config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '**', '*.{rb,yml}', 'uploaders').to_s]

    config.generators do |g|
      g.test_framework :rspec, view_specs: false, helper_specs: false, fixture: true
      g.fixture_replacement :factory_girl, dir: "spec/factories"
    end    
  end
end
