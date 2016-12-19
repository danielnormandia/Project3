class UsersController < ApplicationController
  def show
    # This is the dashboard
    @user = RSpotify::User.new(request.env['omniauth.auth'])
  end
end
