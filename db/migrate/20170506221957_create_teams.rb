class CreateTeams < ActiveRecord::Migration[5.1]
  def change
    create_table :teams do |t|
      t.string  :name
      t.string  :code
      t.string  :image_url
      t.integer :api_football_data_id
      t.timestamps
    end
  end
end
