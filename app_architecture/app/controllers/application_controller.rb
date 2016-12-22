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
    if Mood.find_by(id: params[:id]).comments != []
      spotify_user = updateUser
      playlist = spotify_user.create_playlist!('Test')

      commentList = Comment.where(mood_id: params[:id])
      trackList = []
      commentList.each do |comment|
        uri = comment.uri.gsub("spotify:track:", "")
        track = RSpotify::Track.find(uri)
        trackList.push(track)
      end
      trackList
      playlist.add_tracks!(trackList)
    end
  end

  # def playlist_add
  # end

end
