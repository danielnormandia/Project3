class UsersController < ApplicationController

  def show
    @user = User.find_by(id: params[:id])
    @userMoods = Mood.where(user_id: @user["id"])
    # @image = RSpotify::User.find('justinjohnso').images[0]['url']
    @user_comments = User.find_by(id: params[:id]).comments
    # @moods = Mood.find_by(title: params[:title]).comments.where("user_id = #{params[:id]}")
    # @mood_comments = @moods.map do |mood|
    #   mood
    # end
    @all_comments = @user_comments.map do |comment|
      comment
    end
  end
end

