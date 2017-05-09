class CreateLeagues < ActiveRecord::Migration[5.1]
  def change
    create_table :leagues do |t|
      t.string  :name
      t.string  :image_url
      t.integer :current_matchday
      t.integer :number_of_matchdays
      t.integer :number_of_teams
      t.integer :number_of_games
      t.integer :api_football_data_id
      t.timestamps
    end
  end
end
