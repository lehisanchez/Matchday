class AddIndexToStandings < ActiveRecord::Migration[5.1]
  def change
    add_index :standings, [:team_id, :league_id, :matchday], :unique => true
  end
end
