require 'test_helper'

class PhillyCrimeControllerTest < ActionDispatch::IntegrationTest
  test "should get map" do
    get philly_crime_map_url
    assert_response :success
  end

end
