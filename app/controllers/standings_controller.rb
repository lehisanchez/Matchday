class StandingsController < ApplicationController
  before_action :set_standing, only: [:update, :destroy]
  
  def create
    @standing = Standing.new(standing_params)
    @standing.save
  end
  
  def update
    @standing.update(standing_params)
  end
  
  def destroy
    @standing.destroy
  end
  
  private

    def set_standing
      @standing = Standing.find(params[:id])
    end

    def standing_params
      params.require(:standing).permit( :league_id, 
                                        :team_id, 
                                        :matchday,
                                        :games_played,
                                        :points,
                                        :goals,
                                        :goals_against,
                                        :goal_difference,
                                        :wins,
                                        :draws,
                                        :losses,
                                        :home_goals,
                                        :home_goals_against,
                                        :home_wins,
                                        :home_draws,
                                        :home_losses,
                                        :away_goals,
                                        :away_goals_against,
                                        :away_wins,
                                        :away_draws,
                                        :away_losses)
    end
end
