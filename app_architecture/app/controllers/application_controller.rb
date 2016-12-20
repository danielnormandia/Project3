class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_user

  include SpotifyHelper

  # def current_user
  #   spotify_user = RSpotify::User.new(request.env['omniauth.auth'])
  #   user = spotify_user
  #   hash = spotify_user.to_hash
  #   User.create(display_name: spotify_user.display_name,
  #               email: spotify_user.email,
  #               country: spotify_user.country,
  #               followers: spotify_user.followers,
  #               images: spotify_user.images,
  #               credentials: spotify_user.credentials,
  #               created_at: Time.now)
  # end

  # def login_required
  #   if !logged_in?
  #     redirect_to login_path, :notice => "Log in to edit or delete your post"
  #   end
  # end

  # def logged_in?
  #   !!current_user
  # end

  # helper_method :logged_in?

  # #This method gives us details about our user
  # def current_user
  #   if session[:user_id]
  #     @current_user = User.find(session[:user_id])
  #     @current_user
  #   else
  #     false
  #   end
  # end

  # helper_method :current_user


end
