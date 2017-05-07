require 'test_helper'

class MatchesControllerTest < ActionDispatch::IntegrationTest

  setup do
    @match = matches(:chelsea_v_liverpool)
    @update = { league_id: leagues(:premier_league).id, date:  "2017-05-07 01:04:17", status: "SCHEDULED", matchday: 1, home_team_id: teams(:liverpool).id, away_team_id: teams(:arsenal).id, home_team_goals: 0, away_team_goals: 0 }
  end
  
  test "should create match" do
    assert_difference('Match.count') do
      post matches_url, params: { match: @update }
    end
  end
  
  test "should update match" do
    patch match_url(@match), params: { match: @update }
    assert_equal(@update[:home_team_id], Match.find(@match.id).home_team_id)
  end

  test "should destroy match" do
    assert_difference('Match.count', -1) do
      delete match_url(@match)
    end
  end
end
