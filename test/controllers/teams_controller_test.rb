require 'test_helper'

class TeamsControllerTest < ActionDispatch::IntegrationTest
  
  setup do
    @team = teams(:liverpool)
    @update = { name: "Everton", image_url: "logo.jpg", code: "EVR", api_football_data_id: 62 }
  end
  
  test "should create team" do
    assert_difference('Team.count') do
      post teams_url, params: { team: @update }
    end
  end
  
  test "should show team" do
    get team_url(@team)
    assert_response :success
  end
  
  test "should update team" do
    patch team_url(@team), params: { team: @update }
  end

  test "should destroy team" do
    assert_difference('Team.count', -1) do
      delete team_url(@team)
    end
  end
end
