class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :spotify_search

  def spotify_search(track_name, artist_name)
    track_name = track_name.gsub(" ", "+")
    artist_name = track_name.gsub(" ", "+")
    response = HTTParty.get("https://api.spotify.com/v1/search?q=#{track_name}+#{artist_name}&type=track,artist")
    uri = response['tracks']['items'][0]['uri']
    end
  end

end
