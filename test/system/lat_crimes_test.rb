require "application_system_test_case"

class LatCrimesTest < ApplicationSystemTestCase
  setup do
    @lat_crime = lat_crimes(:one)
  end

  test "visiting the index" do
    visit lat_crimes_url
    assert_selector "h1", text: "Lat Crimes"
  end

  test "creating a Lat crime" do
    visit lat_crimes_url
    click_on "New Lat Crime"

    fill_in "Address", with: @lat_crime.address
    fill_in "Area", with: @lat_crime.area_id
    fill_in "Area name", with: @lat_crime.area_name
    fill_in "Crime code", with: @lat_crime.crime_code
    fill_in "Crime code1", with: @lat_crime.crime_code1
    fill_in "Crime code2", with: @lat_crime.crime_code2
    fill_in "Crime code3", with: @lat_crime.crime_code3
    fill_in "Crime code4", with: @lat_crime.crime_code4
    fill_in "Crime code description", with: @lat_crime.crime_code_description
    fill_in "Cross street", with: @lat_crime.cross_street
    fill_in "Date occurred", with: @lat_crime.date_occurred
    fill_in "Date reported", with: @lat_crime.date_reported
    fill_in "Dr number", with: @lat_crime.dr_number
    fill_in "Lat", with: @lat_crime.lat
    fill_in "Lon", with: @lat_crime.lon
    fill_in "Mo codes", with: @lat_crime.mo_codes
    fill_in "Premise code", with: @lat_crime.premise_code
    fill_in "Premise description", with: @lat_crime.premise_description
    fill_in "Reporting district", with: @lat_crime.reporting_district
    fill_in "Status code", with: @lat_crime.status_code
    fill_in "Status description", with: @lat_crime.status_description
    fill_in "Time occurred", with: @lat_crime.time_occurred
    fill_in "Victim age", with: @lat_crime.victim_age
    fill_in "Victim descent", with: @lat_crime.victim_descent
    fill_in "Victim sex", with: @lat_crime.victim_sex
    fill_in "Weapon description", with: @lat_crime.weapon_description
    fill_in "Weapon used code", with: @lat_crime.weapon_used_code
    click_on "Create Lat crime"

    assert_text "Lat crime was successfully created"
    click_on "Back"
  end

  test "updating a Lat crime" do
    visit lat_crimes_url
    click_on "Edit", match: :first

    fill_in "Address", with: @lat_crime.address
    fill_in "Area", with: @lat_crime.area_id
    fill_in "Area name", with: @lat_crime.area_name
    fill_in "Crime code", with: @lat_crime.crime_code
    fill_in "Crime code1", with: @lat_crime.crime_code1
    fill_in "Crime code2", with: @lat_crime.crime_code2
    fill_in "Crime code3", with: @lat_crime.crime_code3
    fill_in "Crime code4", with: @lat_crime.crime_code4
    fill_in "Crime code description", with: @lat_crime.crime_code_description
    fill_in "Cross street", with: @lat_crime.cross_street
    fill_in "Date occurred", with: @lat_crime.date_occurred
    fill_in "Date reported", with: @lat_crime.date_reported
    fill_in "Dr number", with: @lat_crime.dr_number
    fill_in "Lat", with: @lat_crime.lat
    fill_in "Lon", with: @lat_crime.lon
    fill_in "Mo codes", with: @lat_crime.mo_codes
    fill_in "Premise code", with: @lat_crime.premise_code
    fill_in "Premise description", with: @lat_crime.premise_description
    fill_in "Reporting district", with: @lat_crime.reporting_district
    fill_in "Status code", with: @lat_crime.status_code
    fill_in "Status description", with: @lat_crime.status_description
    fill_in "Time occurred", with: @lat_crime.time_occurred
    fill_in "Victim age", with: @lat_crime.victim_age
    fill_in "Victim descent", with: @lat_crime.victim_descent
    fill_in "Victim sex", with: @lat_crime.victim_sex
    fill_in "Weapon description", with: @lat_crime.weapon_description
    fill_in "Weapon used code", with: @lat_crime.weapon_used_code
    click_on "Update Lat crime"

    assert_text "Lat crime was successfully updated"
    click_on "Back"
  end

  test "destroying a Lat crime" do
    visit lat_crimes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Lat crime was successfully destroyed"
  end
end
