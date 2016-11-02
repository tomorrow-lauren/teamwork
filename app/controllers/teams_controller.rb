class TeamsController < ApplicationController
  def show
    @team = Team.find(params[:id])
    @team_articles = Article.where(team_id: @team.id)
  end

end
