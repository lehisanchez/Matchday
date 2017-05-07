class CreateStandings < ActiveRecord::Migration[5.1]
  def change
    create_table :standings do |t|
      t.references  :league,  foreign_key: true
      t.references  :team,    foreign_key: true
      t.integer     :matchday
      t.integer     :games_played
      t.integer     :points
      t.integer     :goals
      t.integer     :goals_against
      t.integer     :goal_difference
      t.integer     :wins
      t.integer     :draws
      t.integer     :losses
      t.integer     :home_goals
      t.integer     :home_goals_against
      t.integer     :home_wins
      t.integer     :home_draws
      t.integer     :home_losses
      t.integer     :away_goals
      t.integer     :away_goals_against
      t.integer     :away_wins
      t.integer     :away_draws
      t.integer     :away_losses
      t.timestamps
    end
  end
end
