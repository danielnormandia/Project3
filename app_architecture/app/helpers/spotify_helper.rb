module SpotifyHelper
  def initUser
    spotify_user = RSpotify::User.new(request.env['omniauth.auth'])
    @hash = spotify_user.to_hash
  end
  def updateUser
    spotify_user = RSpotify::User.new(@hash)
  end
end
