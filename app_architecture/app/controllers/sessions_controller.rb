class SessionsController < ApplicationController
  def create
    spotify_user = RSpotify::User.new(request.env['omniauth.auth'])
    @user = spotify_user
    @userInDb = User.find_by email: "#{@user.email}"
    sessionUser = @user;
    emailCheck = @userInDb;
    if ((sessionUsers.email) == (emailCheck.email))
    else
    User.create(display_name: spotify_user.display_name,
                email: spotify_user.email,
                country: spotify_user.country,
                followers: spotify_user.followers,
                images: spotify_user.images,
                credentials: spotify_user.credentials,
                created_at: Time.now)
    end
    session[:spotify_user] = spotify_user
    redirect_to root_url, :notice => "Signed in!"
    # byebug
  end

  def destroy
    session[:spotify_user_id] = nil
    redirect_to root_url, :notice => "Signed out!"
  end
end
