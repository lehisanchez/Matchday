class LeaguesController < ApplicationController
  before_action :set_league, only: [:show, :update, :destroy]
  
  def show
  end
  
  def create
    @league = League.new(league_params)
    @league.save
  end
  
  def update
    @league.update(league_params)
  end
  
  def destroy
    @league.destroy
  end
  
  private

    def set_league
      @league = League.find(params[:id])
    end

    def league_params
      params.require(:league).permit( :name, 
                                      :image_url, 
                                      :current_matchday, 
                                      :number_of_matchdays, 
                                      :number_of_teams, 
                                      :number_of_games, 
                                      :api_football_data_id)
    end
  
end
