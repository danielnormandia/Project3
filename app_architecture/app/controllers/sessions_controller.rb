class SessionsController < ApplicationController

  def create
    @hash = initUser
    emailCheck = User.find_by(email: @hash['email'])

    if emailCheck == nil
      User.create(display_name: @hash['display_name'],
                  email: @hash['email'],
                  country: @hash['country'],
                  followers: @hash['followers'],
                  images: @hash['images[0].url'],
                  credentials: @hash['credentials'],
                  spotify_id: @hash['id'],
                  created_at: Time.now)
    end
    session[:spotify_user] = @hash

    redirect_to "/users/#{User.find_by(email: @hash['email']).id}", :notice => "Signed in!"
  end

  def destroy
    session[:spotify_user] = nil
    redirect_to root_url, :notice => "Signed out!"
  end
end
