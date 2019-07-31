require 'test_helper'

class PhillyCrimesControllerTest < ActionDispatch::IntegrationTest
  test "should get map" do
    get philly_crimes_map_url
    assert_response :success
  end

end
