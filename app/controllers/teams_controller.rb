class TeamsController < ApplicationController
  before_action :set_team, only: [:show, :update, :destroy]
  
  def show
  end
  
  def create
    @team = Team.new(team_params)
    @team.save
  end
  
  def update
    @team.update(team_params)
  end
  
  def destroy
    @team.destroy
  end
  
  private

    def set_team
      @team = Team.find(params[:id])
    end

    def team_params
      params.require(:team).permit(:name, :code, :image_url, :api_football_data_id)
    end
end
