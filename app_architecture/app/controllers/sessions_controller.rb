class SessionsController < ApplicationController
  def create
    spotify_user = RSpotify::User.new(request.env['omniauth.auth'])
    emailCheck = User.find_by(email: spotify_user.email)
    byebug

    if emailCheck == nil
      User.create(display_name: spotify_user.display_name,
                  email: spotify_user.email,
                  country: spotify_user.country,
                  followers: spotify_user.followers,
                  images: spotify_user.images[0].url,
                  credentials: spotify_user.credentials,
                  created_at: Time.now)
    end

    user_hash = spotify_user.to_hash
    session_user = user_hash
    session_user = session[:spotify_user]

    redirect_to root_url, :notice => "Signed in!"
  end

  def destroy
    session[:spotify_user_id] = nil
    redirect_to root_url, :notice => "Signed out!"
  end
end
