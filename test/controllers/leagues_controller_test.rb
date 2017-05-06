require 'test_helper'

class LeaguesControllerTest < ActionDispatch::IntegrationTest

  setup do
    @league = leagues(:premier_league)
    @update = { name:                 'Eredivisie',
                image_url:            'https://upload.wikimedia.org/wikipedia/en/1/1e/Eredivisie_logo.svg',
                current_matchday:     1,
                number_of_matchdays:  38,
                number_of_teams:      20,
                number_of_games:      380,
                api_football_data_id: 433
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
  end

  test "should destroy league" do
    assert_difference('League.count', -1) do
      delete league_url(@league)
    end
  end
  
end
