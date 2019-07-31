require 'test_helper'

class ChicagoCrimesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @chicago_crime = chicago_crimes(:one)
  end

  test "should get index" do
    get chicago_crimes_url
    assert_response :success
  end

  test "should get new" do
    get new_chicago_crime_url
    assert_response :success
  end

  test "should create chicago_crime" do
    assert_difference('ChicagoCrime.count') do
      post chicago_crimes_url, params: { chicago_crime: { arrest: @chicago_crime.arrest, beat: @chicago_crime.beat, block: @chicago_crime.block, case_number: @chicago_crime.case_number, community_area: @chicago_crime.community_area, date: @chicago_crime.date, description: @chicago_crime.description, district: @chicago_crime.district, domestic: @chicago_crime.domestic, fbi_code: @chicago_crime.fbi_code, iucr: @chicago_crime.iucr, latitude: @chicago_crime.latitude, location: @chicago_crime.location, location_description: @chicago_crime.location_description, longitude: @chicago_crime.longitude, p_key: @chicago_crime.p_key, primary_type: @chicago_crime.primary_type, updated_on: @chicago_crime.updated_on, ward: @chicago_crime.ward, x_coordinate: @chicago_crime.x_coordinate, y_coordinate: @chicago_crime.y_coordinate, year: @chicago_crime.year } }
    end

    assert_redirected_to chicago_crime_url(ChicagoCrime.last)
  end

  test "should show chicago_crime" do
    get chicago_crime_url(@chicago_crime)
    assert_response :success
  end

  test "should get edit" do
    get edit_chicago_crime_url(@chicago_crime)
    assert_response :success
  end

  test "should update chicago_crime" do
    patch chicago_crime_url(@chicago_crime), params: { chicago_crime: { arrest: @chicago_crime.arrest, beat: @chicago_crime.beat, block: @chicago_crime.block, case_number: @chicago_crime.case_number, community_area: @chicago_crime.community_area, date: @chicago_crime.date, description: @chicago_crime.description, district: @chicago_crime.district, domestic: @chicago_crime.domestic, fbi_code: @chicago_crime.fbi_code, iucr: @chicago_crime.iucr, latitude: @chicago_crime.latitude, location: @chicago_crime.location, location_description: @chicago_crime.location_description, longitude: @chicago_crime.longitude, p_key: @chicago_crime.p_key, primary_type: @chicago_crime.primary_type, updated_on: @chicago_crime.updated_on, ward: @chicago_crime.ward, x_coordinate: @chicago_crime.x_coordinate, y_coordinate: @chicago_crime.y_coordinate, year: @chicago_crime.year } }
    assert_redirected_to chicago_crime_url(@chicago_crime)
  end

  test "should destroy chicago_crime" do
    assert_difference('ChicagoCrime.count', -1) do
      delete chicago_crime_url(@chicago_crime)
    end

    assert_redirected_to chicago_crimes_url
  end
end
