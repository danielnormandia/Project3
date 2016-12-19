class CommentsController < ApplicationController
     def index
    @comments = Comment.all
  end

  def show
    @comment = Comment.find_by(id: params[:id])
  end

  def create
   comment = params['comment']
   user = params['user']
   mood = params['mood']
   Comment.create(content: comment['content'],
                created_at: Time.now,
                updated_at: Time.now,
                artist_name: comment['artist_name'],
                track_name: comment['track_name'],
                user_id: comment['user_id'],
                mood_id: )
 end


end
