class Match < ApplicationRecord
  
  belongs_to :league, inverse_of: :matches
  belongs_to :home_team, class_name: "Team", foreign_key: :home_team_id, inverse_of: :home_matches
  belongs_to :away_team, class_name: "Team", foreign_key: :away_team_id, inverse_of: :away_matches
  
  validates :league_id,
            :date,
            :status,
            :matchday,
            :home_team_id,
            :away_team_id,
            :home_team_goals,
            :away_team_goals, presence: true
            
  validates :league_id,
            :matchday,
            :home_team_id,
            :away_team_id, numericality: { greater_than_or_equal_to: 1, only_integer: true }
            
  validates :home_team_goals,
            :away_team_goals, numericality: { greater_than_or_equal_to: 0, only_integer: true }
            
  validates :league_id, uniqueness: { scope: [:home_team_id, :away_team_id] }
            
end