require 'test_helper'

class LaCrimesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @la_crime = la_crimes(:one)
  end

  test "should get index" do
    get la_crimes_url
    assert_response :success
  end

  test "should get new" do
    get new_la_crime_url
    assert_response :success
  end

  test "should create la_crime" do
    assert_difference('LaCrime.count') do
      post la_crimes_url, params: { la_crime: { address: @la_crime.address, area_id: @la_crime.area_id, area_name: @la_crime.area_name, crime_code: @la_crime.crime_code, crime_code1: @la_crime.crime_code1, crime_code2: @la_crime.crime_code2, crime_code3: @la_crime.crime_code3, crime_code4: @la_crime.crime_code4, crime_code_description: @la_crime.crime_code_description, cross_street: @la_crime.cross_street, date_occurred: @la_crime.date_occurred, date_reported: @la_crime.date_reported, dr_number: @la_crime.dr_number, location: @la_crime.location, mo_codes: @la_crime.mo_codes, premise_code: @la_crime.premise_code, premise_description: @la_crime.premise_description, reporting_district: @la_crime.reporting_district, status_code: @la_crime.status_code, status_description: @la_crime.status_description, time_occurred: @la_crime.time_occurred, victim_age: @la_crime.victim_age, victim_descent: @la_crime.victim_descent, victim_sex: @la_crime.victim_sex, weapon_description: @la_crime.weapon_description, weapon_used_code: @la_crime.weapon_used_code } }
    end

    assert_redirected_to la_crime_url(LaCrime.last)
  end

  test "should show la_crime" do
    get la_crime_url(@la_crime)
    assert_response :success
  end

  test "should get edit" do
    get edit_la_crime_url(@la_crime)
    assert_response :success
  end

  test "should update la_crime" do
    patch la_crime_url(@la_crime), params: { la_crime: { address: @la_crime.address, area_id: @la_crime.area_id, area_name: @la_crime.area_name, crime_code: @la_crime.crime_code, crime_code1: @la_crime.crime_code1, crime_code2: @la_crime.crime_code2, crime_code3: @la_crime.crime_code3, crime_code4: @la_crime.crime_code4, crime_code_description: @la_crime.crime_code_description, cross_street: @la_crime.cross_street, date_occurred: @la_crime.date_occurred, date_reported: @la_crime.date_reported, dr_number: @la_crime.dr_number, location: @la_crime.location, mo_codes: @la_crime.mo_codes, premise_code: @la_crime.premise_code, premise_description: @la_crime.premise_description, reporting_district: @la_crime.reporting_district, status_code: @la_crime.status_code, status_description: @la_crime.status_description, time_occurred: @la_crime.time_occurred, victim_age: @la_crime.victim_age, victim_descent: @la_crime.victim_descent, victim_sex: @la_crime.victim_sex, weapon_description: @la_crime.weapon_description, weapon_used_code: @la_crime.weapon_used_code } }
    assert_redirected_to la_crime_url(@la_crime)
  end

  test "should destroy la_crime" do
    assert_difference('LaCrime.count', -1) do
      delete la_crime_url(@la_crime)
    end

    assert_redirected_to la_crimes_url
  end
end
