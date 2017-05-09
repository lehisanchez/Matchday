class AddPositionToStandings < ActiveRecord::Migration[5.1]
  def change
    add_column :standings, :position, :string
  end
end
