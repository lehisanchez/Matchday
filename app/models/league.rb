class League < ApplicationRecord
  
  has_and_belongs_to_many :teams, inverse_of: :leagues
  has_many :standings, inverse_of: :league
  has_many :matches,   inverse_of: :league
  
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
  
  def percent_complete
    (self.current_matchday.to_f / self.number_of_matchdays.to_f) * 100
  end
  
  private
  
  def self.default_scope
    order(:name)
  end

end
