require 'test_helper'

class DenverCrimesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @denver_crime = denver_crimes(:one)
  end

  test "should get index" do
    get denver_crimes_url
    assert_response :success
  end

  test "should get new" do
    get new_denver_crime_url
    assert_response :success
  end

  test "should create denver_crime" do
    assert_difference('DenverCrime.count') do
      post denver_crimes_url, params: { denver_crime: { district_id: @denver_crime.district_id, firstoccurrencedate: @denver_crime.firstoccurrencedate, geolat: @denver_crime.geolat, geolon: @denver_crime.geolon, geox: @denver_crime.geox, geoy: @denver_crime.geoy, inc_id_ent_id: @denver_crime.inc_id_ent_id, inc_id_entaddress: @denver_crime.inc_id_entaddress, iscrime: @denver_crime.iscrime, istraffic: @denver_crime.istraffic, lastoccurrencedate: @denver_crime.lastoccurrencedate, neighborhood_id: @denver_crime.neighborhood_id, offense_id: @denver_crime.offense_id, offensecategory_id: @denver_crime.offensecategory_id, offensecode: @denver_crime.offensecode, offensecodeextension: @denver_crime.offensecodeextension, offensetype_id: @denver_crime.offensetype_id, precinct_id: @denver_crime.precinct_id, reporteddate: @denver_crime.reporteddate } }
    end

    assert_redirected_to denver_crime_url(DenverCrime.last)
  end

  test "should show denver_crime" do
    get denver_crime_url(@denver_crime)
    assert_response :success
  end

  test "should get edit" do
    get edit_denver_crime_url(@denver_crime)
    assert_response :success
  end

  test "should update denver_crime" do
    patch denver_crime_url(@denver_crime), params: { denver_crime: { district_id: @denver_crime.district_id, firstoccurrencedate: @denver_crime.firstoccurrencedate, geolat: @denver_crime.geolat, geolon: @denver_crime.geolon, geox: @denver_crime.geox, geoy: @denver_crime.geoy, inc_id_ent_id: @denver_crime.inc_id_ent_id, inc_id_entaddress: @denver_crime.inc_id_entaddress, iscrime: @denver_crime.iscrime, istraffic: @denver_crime.istraffic, lastoccurrencedate: @denver_crime.lastoccurrencedate, neighborhood_id: @denver_crime.neighborhood_id, offense_id: @denver_crime.offense_id, offensecategory_id: @denver_crime.offensecategory_id, offensecode: @denver_crime.offensecode, offensecodeextension: @denver_crime.offensecodeextension, offensetype_id: @denver_crime.offensetype_id, precinct_id: @denver_crime.precinct_id, reporteddate: @denver_crime.reporteddate } }
    assert_redirected_to denver_crime_url(@denver_crime)
  end

  test "should destroy denver_crime" do
    assert_difference('DenverCrime.count', -1) do
      delete denver_crime_url(@denver_crime)
    end

    assert_redirected_to denver_crimes_url
  end
end
