class CommentsController < ApplicationController

  def new
  end

  def create
    comment = Comment.new(comment_params)
    if comment.save
      redirect_to '/'
    else
      redirect_to '/'
    end
  end

  def update
  end

  def destroy
  end

end
