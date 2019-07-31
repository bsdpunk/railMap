require 'test_helper'

class Chicago2008CrimesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @chicago2008_crime = chicago2008_crimes(:one)
  end

  test "should get index" do
    get chicago2008_crimes_url
    assert_response :success
  end

  test "should get new" do
    get new_chicago2008_crime_url
    assert_response :success
  end

  test "should create chicago2008_crime" do
    assert_difference('Chicago2008Crime.count') do
      post chicago2008_crimes_url, params: { chicago2008_crime: { arrest: @chicago2008_crime.arrest, beat: @chicago2008_crime.beat, block: @chicago2008_crime.block, case_number: @chicago2008_crime.case_number, community_area: @chicago2008_crime.community_area, date: @chicago2008_crime.date, description: @chicago2008_crime.description, district: @chicago2008_crime.district, domestic: @chicago2008_crime.domestic, fbi_code: @chicago2008_crime.fbi_code, iucr: @chicago2008_crime.iucr, latitude: @chicago2008_crime.latitude, location: @chicago2008_crime.location, location_description: @chicago2008_crime.location_description, longitude: @chicago2008_crime.longitude, p_key: @chicago2008_crime.p_key, primary_type: @chicago2008_crime.primary_type, updated_on: @chicago2008_crime.updated_on, ward: @chicago2008_crime.ward, x_coordinate: @chicago2008_crime.x_coordinate, y_coordinate: @chicago2008_crime.y_coordinate, year: @chicago2008_crime.year } }
    end

    assert_redirected_to chicago2008_crime_url(Chicago2008Crime.last)
  end

  test "should show chicago2008_crime" do
    get chicago2008_crime_url(@chicago2008_crime)
    assert_response :success
  end

  test "should get edit" do
    get edit_chicago2008_crime_url(@chicago2008_crime)
    assert_response :success
  end

  test "should update chicago2008_crime" do
    patch chicago2008_crime_url(@chicago2008_crime), params: { chicago2008_crime: { arrest: @chicago2008_crime.arrest, beat: @chicago2008_crime.beat, block: @chicago2008_crime.block, case_number: @chicago2008_crime.case_number, community_area: @chicago2008_crime.community_area, date: @chicago2008_crime.date, description: @chicago2008_crime.description, district: @chicago2008_crime.district, domestic: @chicago2008_crime.domestic, fbi_code: @chicago2008_crime.fbi_code, iucr: @chicago2008_crime.iucr, latitude: @chicago2008_crime.latitude, location: @chicago2008_crime.location, location_description: @chicago2008_crime.location_description, longitude: @chicago2008_crime.longitude, p_key: @chicago2008_crime.p_key, primary_type: @chicago2008_crime.primary_type, updated_on: @chicago2008_crime.updated_on, ward: @chicago2008_crime.ward, x_coordinate: @chicago2008_crime.x_coordinate, y_coordinate: @chicago2008_crime.y_coordinate, year: @chicago2008_crime.year } }
    assert_redirected_to chicago2008_crime_url(@chicago2008_crime)
  end

  test "should destroy chicago2008_crime" do
    assert_difference('Chicago2008Crime.count', -1) do
      delete chicago2008_crime_url(@chicago2008_crime)
    end

    assert_redirected_to chicago2008_crimes_url
  end
end
