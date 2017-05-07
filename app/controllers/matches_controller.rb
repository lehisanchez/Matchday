class MatchesController < ApplicationController
  before_action :set_match, only: [:update, :destroy]
  
  def create
    @match = Match.new(match_params)
    @match.save
  end
  
  def update
    @match.update(match_params)
  end
  
  def destroy
    @match.destroy
  end
  
  private

    def set_match
      @match = Match.find(params[:id])
    end

    def match_params
      params.require(:match).permit( :league_id,
                                     :date,
                                     :status,
                                     :matchday,
                                     :home_team_id,
                                     :away_team_id,
                                     :home_team_goals,
                                     :away_team_goals)
    end
end
