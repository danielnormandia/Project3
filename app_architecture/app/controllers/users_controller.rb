class UsersController < ApplicationController
  def show
    # This is the dashboard
    spotify_user = RSpotify::User.new(request.env['omniauth.auth'])
    @user = spotify_user
    User.create(display_name: spotify_user.display_name,
                email: spotify_user.email,
                country: spotify_user.country,
                followers: spotify_user.followers,
                images: spotify_user.images,
                credentials: spotify_user.credentials,
                created_at: Time.now)
  end
end
