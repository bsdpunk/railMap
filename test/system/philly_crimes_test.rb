require "application_system_test_case"

class PhillyCrimesTest < ApplicationSystemTestCase
  setup do
    @philly_crime = philly_crimes(:one)
  end

  test "visiting the index" do
    visit philly_crimes_url
    assert_selector "h1", text: "Philly Crimes"
  end

  test "creating a Philly crime" do
    visit philly_crimes_url
    click_on "New Philly Crime"

    fill_in "Dc dist", with: @philly_crime.dc_dist
    fill_in "Dc key", with: @philly_crime.dc_key
    fill_in "Dispatch date", with: @philly_crime.dispatch_date
    fill_in "Dispatch date time", with: @philly_crime.dispatch_date_time
    fill_in "Dispatch time", with: @philly_crime.dispatch_time
    fill_in "Hour", with: @philly_crime.hour
    fill_in "Lat", with: @philly_crime.lat
    fill_in "Location block", with: @philly_crime.location_block
    fill_in "Lon", with: @philly_crime.lon
    fill_in "Month", with: @philly_crime.month
    fill_in "Police districts", with: @philly_crime.police_districts
    fill_in "Psa", with: @philly_crime.psa
    fill_in "Text general code", with: @philly_crime.text_general_code
    fill_in "Ucr general", with: @philly_crime.ucr_general
    click_on "Create Philly crime"

    assert_text "Philly crime was successfully created"
    click_on "Back"
  end

  test "updating a Philly crime" do
    visit philly_crimes_url
    click_on "Edit", match: :first

    fill_in "Dc dist", with: @philly_crime.dc_dist
    fill_in "Dc key", with: @philly_crime.dc_key
    fill_in "Dispatch date", with: @philly_crime.dispatch_date
    fill_in "Dispatch date time", with: @philly_crime.dispatch_date_time
    fill_in "Dispatch time", with: @philly_crime.dispatch_time
    fill_in "Hour", with: @philly_crime.hour
    fill_in "Lat", with: @philly_crime.lat
    fill_in "Location block", with: @philly_crime.location_block
    fill_in "Lon", with: @philly_crime.lon
    fill_in "Month", with: @philly_crime.month
    fill_in "Police districts", with: @philly_crime.police_districts
    fill_in "Psa", with: @philly_crime.psa
    fill_in "Text general code", with: @philly_crime.text_general_code
    fill_in "Ucr general", with: @philly_crime.ucr_general
    click_on "Update Philly crime"

    assert_text "Philly crime was successfully updated"
    click_on "Back"
  end

  test "destroying a Philly crime" do
    visit philly_crimes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Philly crime was successfully destroyed"
  end
end
