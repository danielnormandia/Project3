class CommentsController < ApplicationController
     def index
    @comments = Comment.all
  end

  def show
    @comment = Comment.find_by(id: params[:id])
  end

  def create

  end


end
