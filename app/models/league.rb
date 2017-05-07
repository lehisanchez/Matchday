class League < ApplicationRecord
  
  has_and_belongs_to_many :teams
  has_many :standings
  
  validates :name, 
            :image_url,
            :current_matchday,
            :number_of_matchdays,
            :number_of_teams,
            :number_of_games,
            :api_football_data_id, 
            presence: true
            
  validates :name, 
            :image_url, 
            :api_football_data_id, 
            uniqueness: true
            
  validates :api_football_data_id,
            :current_matchday,
            :number_of_matchdays,
            :number_of_teams,
            :number_of_games,
            numericality: { greater_than_or_equal_to: 1, only_integer: true }
            
  validates :image_url, format: {
    with: %r{\.(gif|jpg|png|svg)\Z}i,
    message: 'must be a URL for GIF, JPG, PNG, or SVG image.'
  }
  
  private
  
  def self.default_scope
    order(:name)
  end

end
