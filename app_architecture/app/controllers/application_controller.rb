class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :spotify_search, :playlist_create, :playlist_add

  def initUser
    spotify_user = RSpotify::User.new(request.env['omniauth.auth'])
    @hash = spotify_user.to_hash
  end

  def updateUser
    spotify_user = RSpotify::User.new(session[:spotify_user])
  end

  def spotify_search(track_name, artist_name)
    track_name = track_name.gsub(" ", "+")
    artist_name = artist_name.gsub(" ", "+")
    response = HTTParty.get("https://api.spotify.com/v1/search?q=#{track_name}+#{artist_name}&type=track,artist")
    uri = response['tracks']['items'][0]['uri']
    uri.slice!("spotify:track:")
    uri
  end

  def playlist_create
    spotify_user = updateUser
    # current_user = session[:spotify_user]
    # spotify_user = RSpotify::User.new(current_user)
    playlist = spotify_user.create_playlist!('Test')
    # comments = Mood.find_by(id: params[:id]).comments
    # tracks = Array.new
    # comments.each do |comment|
    #   response = RSpotify::Track.find(comment.uri.gsub("spotify:artist:",""))
    #   tracks.push(response)
    # end
    # p tracks
  #   # playlist.add_tracks!(tracks)
  end

  def playlist_add
  end

end
