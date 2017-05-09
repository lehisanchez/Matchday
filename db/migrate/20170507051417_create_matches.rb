class CreateMatches < ActiveRecord::Migration[5.1]
  def change
    create_table :matches do |t|
      t.references  :league, foreign_key: true
      t.datetime    :date
      t.string      :status
      t.integer     :matchday
      t.references  :home_team, foreign_key: true
      t.references  :away_team, foreign_key: true
      t.integer     :home_team_goals
      t.integer     :away_team_goals
      t.timestamps
    end
  end
end
