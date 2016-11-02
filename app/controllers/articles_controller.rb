class ArticlesController < ApplicationController

  def show
    @article = Article.find(params[:id])
    @author = User.find(@article.user_id)
  end

end
