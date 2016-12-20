class CommentsController < ApplicationController
  def index
    @comments = Comment.all
  end

  def show
    @comment = Comment.find_by(id: params[:id])
  end

  def create
   @current_user = User.find_by_id(session[:current_user_id])
   comment = params['comment']
   user = params['user']
   @mood = Mood.find_by(id: params[:id])
   Comment.create(content: comment['content'],
                created_at: Time.now,
                updated_at: Time.now,
                artist_name: comment['artist_name'],
                track_name: comment['track_name'],
                user_id: @current_user,
                mood_id: @mood)
   redirect_to :back
  end


end
