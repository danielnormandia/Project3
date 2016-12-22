require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module AppArchitecture
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end

SPOTIFY_CLIENT_ID = ENV['SPOTIFY_CLIENT_ID']
SPOTIFY_CLIENT_SECRET = ENV['SPOTIFY_CLIENT_SECRET']

# Authenticate rspotify
RSpotify::authenticate(SPOTIFY_CLIENT_ID, SPOTIFY_CLIENT_SECRET)

