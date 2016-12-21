class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :spotify_search, :playlist_create, :playlist_add

  def spotify_search(track_name, artist_name)
    track_name = track_name.gsub(" ", "+")
    artist_name = track_name.gsub(" ", "+")
    response = HTTParty.get("https://api.spotify.com/v1/search?q=#{track_name}+#{artist_name}&type=track,artist")
    uri = response['tracks']['items'][0]['uri']
    uri.slice!("spotify:track:")
    uri
  end

  def playlist_create
    current_user = session[:spotify_user]
    spotify_user = RSpotify::User.new(current_user)
    playlist = spotify_user.create_playlist!('Test Playlist')
  end

  def playlist_add
    comments = Mood.find_by(id: params[:id]).comments
    tracks = Array.new
    comments.each do |comment|
      response = HTTParty.get("https://api.spotify.com/v1/search?q=#{comment.track_name}+#{comment.artist_name}&type=track,artist")
      tracks.push(response)
    end
    playlist.add_tracks!(tracks)

  end

end
