class Team < ApplicationRecord
  
  validates :name,
            :code,
            :image_url, 
            :api_football_data_id, 
            presence: true
            
  validates :name, 
            :image_url, 
            :api_football_data_id, 
            uniqueness: true
            
  validates :api_football_data_id, numericality: { greater_than_or_equal_to: 1, only_integer: true }
  
  validates :image_url, format: {
    with: %r{\.(gif|jpg|png|svg)\Z}i,
    message: 'must be a URL for GIF, JPG, PNG, or SVG image.'
  }
                            
end
