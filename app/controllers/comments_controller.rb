class CommentsController < ApplicationController

  def new
  end

  def create
    comment = Comment.new(comment_params)
    if comment.save
      redirect_to "/articles/" + comment.article_id + "/"
    else
      redirect_to "/articles/" + comment.article_id + "/"
    end
  end

  def update
  end

  def destroy
  end

end
