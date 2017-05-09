class Standing < ApplicationRecord
  
  belongs_to :league, inverse_of: :standings
  belongs_to :team,   inverse_of: :standings
  
  validates :matchday,
            :team_id,
            :league_id,
            :position, presence: true

  validates :matchday,
            :team_id,
            :league_id, numericality: { greater_than_or_equal_to: 1, only_integer: true }
            
  validates :games_played,
            :position,
            :points,
            :goals,
            :goals_against,
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
            :away_losses, numericality: { greater_than_or_equal_to: 0, only_integer: true }
              
  validates :goal_difference, numericality: { only_integer: true }
  
  validates :team_id, uniqueness: { scope: [:league_id, :matchday, :position] }
  
end
