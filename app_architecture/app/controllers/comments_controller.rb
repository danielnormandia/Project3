class CommentsController < ApplicationController

  def index
    @comments = Comment.all
  end

  def show
    @comment = Comment.find_by(id: params[:id])
  end

  def create
   comment = params['comment']
   user_id = User.find_by(email: params[:user_email]).id
   mood_id = params[:mood_id]
   Comment.create(content: comment['content'],
                artist_name: comment['artist_name'],
                created_at: Time.now,
                updated_at: Time.now,
                track_name: comment['track_name'],
                user_id: user_id,
                mood_id: mood_id)
   redirect_to :back
  end


end
