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
   uri = spotify_search(comment['track_name'], comment['artist_name'])
   Comment.create(content: comment['content'],
                artist_name: comment['artist_name'],
                track_name: comment['track_name'],
                created_at: Time.now,
                updated_at: Time.now,
                user_id: user_id,
                mood_id: mood_id,
                uri: uri)
   redirect_to :back
  end

  def update
    @user = User.find_by(id: params[:id])
    Comment.find_by(id: params[:id]).update(comment_params)
    redirect_to ('/users')
  end

  def comment_params
    params.require(:comment).permit(:content, :user_id, :mood_id)
  end

  def edit
    @comment = Comment.find_by(id: params[:id])
  end

  def destroy
    Comment.destroy(params['id'])
    redirect_to :back
  end
end
