class RemoveTeamReferences < ActiveRecord::Migration[5.1]
  def change
    remove_reference :matches, column: :home_team_id
    remove_reference :matches, column: :away_team_id
  end
end
