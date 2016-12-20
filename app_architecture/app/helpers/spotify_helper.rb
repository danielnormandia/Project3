module SpotifyHelper
  def new_user
    spotify_user = RSpotify::User.new(request.env['omniauth.auth'])
    # user = spotify_user
    # byebug
    @hash = spotify_user.to_hash
    User.create(display_name: spotify_user.display_name,
                email: spotify_user.email,
                country: spotify_user.country,
                followers: spotify_user.followers,
                images: spotify_user.images,
                credentials: spotify_user.credentials,
                created_at: Time.now)
  end
  def refresh_user
    # @hash
    # p "AAAAHHHHHAAAAHHHHHAAAAHHHHHAAAAHHHHHAAAAHHHHHAAAAHHHHHAAAAHHHHHAAAAHHHHHAAAAHHHHHAAAAHHHHHAAAAHHHHHAAAAHHHHHAAAAHHHHHAAAAHHHHHAAAAHHHHHAAAAHHHHHAAAAHHHHHAAAAHHHHHAAAAHHHHHAAAAHHHHHAAAAHHHHHAAAAHHHHHAAAAHHHHHAAAAHHHHHAAAAHHHHHAAAAHHHHHAAAAHHHHHAAAAHHHHHAAAAHHHHHAAAAHHHHH"
    # spotify_user = RSpotify::User.new(@hash)
  end
end
