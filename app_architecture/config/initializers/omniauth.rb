require 'rspotify/oauth'

# SPOTIFY_CLIENT_ID = ENV['SPOTIFY_CLIENT_ID']
# SPOTIFY_CLIENT_SECRET = ENV['SPOTIFY_CLIENT_SECRET']

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :spotify, SPOTIFY_CLIENT_ID, SPOTIFY_CLIENT_SECRET, scope: 'playlist-modify-public playlist-modify-private user-follow-read user-follow-modify user-library-modify user-read-private user-read-email'
end
