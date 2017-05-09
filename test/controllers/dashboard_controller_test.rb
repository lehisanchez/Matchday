require 'test_helper'

class DashboardControllerTest < ActionDispatch::IntegrationTest
  
  include Devise::Test::IntegrationHelpers
  
  setup do
    sign_in users(:messi)
  end
  
  test "should get dashboard page" do
    get dashboard_path
    assert_response :success
  end

end
