require "application_system_test_case"

class LaCrimesTest < ApplicationSystemTestCase
  setup do
    @la_crime = la_crimes(:one)
  end

  test "visiting the index" do
    visit la_crimes_url
    assert_selector "h1", text: "La Crimes"
  end

  test "creating a La crime" do
    visit la_crimes_url
    click_on "New La Crime"

    fill_in "Address", with: @la_crime.address
    fill_in "Area", with: @la_crime.area_id
    fill_in "Area name", with: @la_crime.area_name
    fill_in "Crime code", with: @la_crime.crime_code
    fill_in "Crime code1", with: @la_crime.crime_code1
    fill_in "Crime code2", with: @la_crime.crime_code2
    fill_in "Crime code3", with: @la_crime.crime_code3
    fill_in "Crime code4", with: @la_crime.crime_code4
    fill_in "Crime code description", with: @la_crime.crime_code_description
    fill_in "Cross street", with: @la_crime.cross_street
    fill_in "Date occurred", with: @la_crime.date_occurred
    fill_in "Date reported", with: @la_crime.date_reported
    fill_in "Dr number", with: @la_crime.dr_number
    fill_in "Location", with: @la_crime.location
    fill_in "Mo codes", with: @la_crime.mo_codes
    fill_in "Premise code", with: @la_crime.premise_code
    fill_in "Premise description", with: @la_crime.premise_description
    fill_in "Reporting district", with: @la_crime.reporting_district
    fill_in "Status code", with: @la_crime.status_code
    fill_in "Status description", with: @la_crime.status_description
    fill_in "Time occurred", with: @la_crime.time_occurred
    fill_in "Victim age", with: @la_crime.victim_age
    fill_in "Victim descent", with: @la_crime.victim_descent
    fill_in "Victim sex", with: @la_crime.victim_sex
    fill_in "Weapon description", with: @la_crime.weapon_description
    fill_in "Weapon used code", with: @la_crime.weapon_used_code
    click_on "Create La crime"

    assert_text "La crime was successfully created"
    click_on "Back"
  end

  test "updating a La crime" do
    visit la_crimes_url
    click_on "Edit", match: :first

    fill_in "Address", with: @la_crime.address
    fill_in "Area", with: @la_crime.area_id
    fill_in "Area name", with: @la_crime.area_name
    fill_in "Crime code", with: @la_crime.crime_code
    fill_in "Crime code1", with: @la_crime.crime_code1
    fill_in "Crime code2", with: @la_crime.crime_code2
    fill_in "Crime code3", with: @la_crime.crime_code3
    fill_in "Crime code4", with: @la_crime.crime_code4
    fill_in "Crime code description", with: @la_crime.crime_code_description
    fill_in "Cross street", with: @la_crime.cross_street
    fill_in "Date occurred", with: @la_crime.date_occurred
    fill_in "Date reported", with: @la_crime.date_reported
    fill_in "Dr number", with: @la_crime.dr_number
    fill_in "Location", with: @la_crime.location
    fill_in "Mo codes", with: @la_crime.mo_codes
    fill_in "Premise code", with: @la_crime.premise_code
    fill_in "Premise description", with: @la_crime.premise_description
    fill_in "Reporting district", with: @la_crime.reporting_district
    fill_in "Status code", with: @la_crime.status_code
    fill_in "Status description", with: @la_crime.status_description
    fill_in "Time occurred", with: @la_crime.time_occurred
    fill_in "Victim age", with: @la_crime.victim_age
    fill_in "Victim descent", with: @la_crime.victim_descent
    fill_in "Victim sex", with: @la_crime.victim_sex
    fill_in "Weapon description", with: @la_crime.weapon_description
    fill_in "Weapon used code", with: @la_crime.weapon_used_code
    click_on "Update La crime"

    assert_text "La crime was successfully updated"
    click_on "Back"
  end

  test "destroying a La crime" do
    visit la_crimes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "La crime was successfully destroyed"
  end
end
