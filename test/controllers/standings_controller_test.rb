require 'test_helper'

class StandingsControllerTest < ActionDispatch::IntegrationTest
  
  setup do
    @standing = standings(:matchday_1)
    @update = { 
      league_id:          leagues(:premier_league).id,
      team_id:            teams(:chelsea).id,
      matchday:           4,
      games_played:       3,
      points:             9,
      goals:              3,
      goals_against:      0,
      goal_difference:    3,
      wins:               3,
      draws:              0,
      losses:             0,
      home_goals:         2,
      home_goals_against: 0,
      home_wins:          2,
      home_draws:         0,
      home_losses:        0,
      away_goals:         1,
      away_goals_against: 0,
      away_wins:          1,
      away_draws:         0,
      away_losses:        0
    }
  end
  
  test "should create standing" do
    assert_difference('Standing.count') do
      post standings_url, params: { standing: @update }
    end
  end
  
  test "should update standing" do
    patch standing_url(@standing), params: { standing: @update }
  end

  test "should destroy standing" do
    assert_difference('Standing.count', -1) do
      delete standing_url(@standing)
    end
  end
  
end
