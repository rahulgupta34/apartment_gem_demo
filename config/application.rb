require_relative "boot"

require "rails/all"
require 'apartment/elevators/subdomain'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Apartment
  class Application < Rails::Application
    config.middleware.use Apartment::Elevators::Subdomain
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0
    config.hosts = nil
    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
  end
end
