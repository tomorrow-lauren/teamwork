class ArticlesController < ApplicationController

  def show
    @article = Article.find(params[:id])
    @author = User.find(@article.author)
  end

end
