require 'test_helper'

class LeaguesControllerTest < ActionDispatch::IntegrationTest

  setup do
    @league = leagues(:premier_league)
    @update = { name:                 'MLS',
                image_url:            'MLS_Logo.svg',
                current_matchday:     1,
                number_of_matchdays:  38,
                number_of_teams:      20,
                number_of_games:      380,
                api_football_data_id: 500
    }
  end
  
  test "should create league" do
    assert_difference('League.count') do
      post leagues_url, params: { league: @update }
    end
  end
  
  test "should show league" do
    get league_url(@league)
    assert_response :success
  end
  
  test "should update league" do
    patch league_url(@league), params: { league: @update }
    assert_equal(@update[:name], League.find(@league.id).name)
  end

  test "should destroy league" do
    assert_difference('League.count', -1) do
      delete league_url(@league)
    end
  end
  
end
