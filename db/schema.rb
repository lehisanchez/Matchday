# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170507082040) do

  create_table "leagues", force: :cascade do |t|
    t.string "name"
    t.string "image_url"
    t.integer "current_matchday"
    t.integer "number_of_matchdays"
    t.integer "number_of_teams"
    t.integer "number_of_games"
    t.integer "api_football_data_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "leagues_teams", id: false, force: :cascade do |t|
    t.integer "league_id", null: false
    t.integer "team_id", null: false
    t.index ["league_id", "team_id"], name: "index_leagues_teams_on_league_id_and_team_id"
  end

  create_table "matches", force: :cascade do |t|
    t.integer "league_id"
    t.datetime "date"
    t.string "status"
    t.integer "matchday"
    t.integer "home_team_id"
    t.integer "away_team_id"
    t.integer "home_team_goals"
    t.integer "away_team_goals"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["away_team_id"], name: "index_matches_on_away_team_id"
    t.index ["home_team_id"], name: "index_matches_on_home_team_id"
    t.index ["league_id"], name: "index_matches_on_league_id"
  end

  create_table "standings", force: :cascade do |t|
    t.integer "league_id"
    t.integer "team_id"
    t.integer "matchday"
    t.integer "games_played"
    t.integer "points"
    t.integer "goals"
    t.integer "goals_against"
    t.integer "goal_difference"
    t.integer "wins"
    t.integer "draws"
    t.integer "losses"
    t.integer "home_goals"
    t.integer "home_goals_against"
    t.integer "home_wins"
    t.integer "home_draws"
    t.integer "home_losses"
    t.integer "away_goals"
    t.integer "away_goals_against"
    t.integer "away_wins"
    t.integer "away_draws"
    t.integer "away_losses"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "position"
    t.index ["league_id"], name: "index_standings_on_league_id"
    t.index ["team_id", "league_id", "matchday"], name: "index_standings_on_team_id_and_league_id_and_matchday", unique: true
    t.index ["team_id"], name: "index_standings_on_team_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.string "image_url"
    t.integer "api_football_data_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
