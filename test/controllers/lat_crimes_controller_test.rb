require 'test_helper'

class LatCrimesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lat_crime = lat_crimes(:one)
  end

  test "should get index" do
    get lat_crimes_url
    assert_response :success
  end

  test "should get new" do
    get new_lat_crime_url
    assert_response :success
  end

  test "should create lat_crime" do
    assert_difference('LatCrime.count') do
      post lat_crimes_url, params: { lat_crime: { address: @lat_crime.address, area_id: @lat_crime.area_id, area_name: @lat_crime.area_name, crime_code: @lat_crime.crime_code, crime_code1: @lat_crime.crime_code1, crime_code2: @lat_crime.crime_code2, crime_code3: @lat_crime.crime_code3, crime_code4: @lat_crime.crime_code4, crime_code_description: @lat_crime.crime_code_description, cross_street: @lat_crime.cross_street, date_occurred: @lat_crime.date_occurred, date_reported: @lat_crime.date_reported, dr_number: @lat_crime.dr_number, lat: @lat_crime.lat, lon: @lat_crime.lon, mo_codes: @lat_crime.mo_codes, premise_code: @lat_crime.premise_code, premise_description: @lat_crime.premise_description, reporting_district: @lat_crime.reporting_district, status_code: @lat_crime.status_code, status_description: @lat_crime.status_description, time_occurred: @lat_crime.time_occurred, victim_age: @lat_crime.victim_age, victim_descent: @lat_crime.victim_descent, victim_sex: @lat_crime.victim_sex, weapon_description: @lat_crime.weapon_description, weapon_used_code: @lat_crime.weapon_used_code } }
    end

    assert_redirected_to lat_crime_url(LatCrime.last)
  end

  test "should show lat_crime" do
    get lat_crime_url(@lat_crime)
    assert_response :success
  end

  test "should get edit" do
    get edit_lat_crime_url(@lat_crime)
    assert_response :success
  end

  test "should update lat_crime" do
    patch lat_crime_url(@lat_crime), params: { lat_crime: { address: @lat_crime.address, area_id: @lat_crime.area_id, area_name: @lat_crime.area_name, crime_code: @lat_crime.crime_code, crime_code1: @lat_crime.crime_code1, crime_code2: @lat_crime.crime_code2, crime_code3: @lat_crime.crime_code3, crime_code4: @lat_crime.crime_code4, crime_code_description: @lat_crime.crime_code_description, cross_street: @lat_crime.cross_street, date_occurred: @lat_crime.date_occurred, date_reported: @lat_crime.date_reported, dr_number: @lat_crime.dr_number, lat: @lat_crime.lat, lon: @lat_crime.lon, mo_codes: @lat_crime.mo_codes, premise_code: @lat_crime.premise_code, premise_description: @lat_crime.premise_description, reporting_district: @lat_crime.reporting_district, status_code: @lat_crime.status_code, status_description: @lat_crime.status_description, time_occurred: @lat_crime.time_occurred, victim_age: @lat_crime.victim_age, victim_descent: @lat_crime.victim_descent, victim_sex: @lat_crime.victim_sex, weapon_description: @lat_crime.weapon_description, weapon_used_code: @lat_crime.weapon_used_code } }
    assert_redirected_to lat_crime_url(@lat_crime)
  end

  test "should destroy lat_crime" do
    assert_difference('LatCrime.count', -1) do
      delete lat_crime_url(@lat_crime)
    end

    assert_redirected_to lat_crimes_url
  end
end
