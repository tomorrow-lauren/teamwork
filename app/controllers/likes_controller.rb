class LikesController < ApplicationController

  def create
    article = Article.find(params[:article_id])
    like = Like.new(user_id: session[:user_id], article_id: article.id)
    if like.save
      details = {article.id => :article}
      render json: details, status: :ok
    else
      redirect_to '/profile'
    end
  end

end
