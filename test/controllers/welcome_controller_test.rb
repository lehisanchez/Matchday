require 'test_helper'

class WelcomeControllerTest < ActionDispatch::IntegrationTest
  test "should get welcome page (root)" do
    get root_url
    assert_response :success
    assert_select 'h1', 'Matchday'
  end

end
