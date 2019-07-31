require "application_system_test_case"

class ChicagoCrimesTest < ApplicationSystemTestCase
  setup do
    @chicago_crime = chicago_crimes(:one)
  end

  test "visiting the index" do
    visit chicago_crimes_url
    assert_selector "h1", text: "Chicago Crimes"
  end

  test "creating a Chicago crime" do
    visit chicago_crimes_url
    click_on "New Chicago Crime"

    check "Arrest" if @chicago_crime.arrest
    fill_in "Beat", with: @chicago_crime.beat
    fill_in "Block", with: @chicago_crime.block
    fill_in "Case number", with: @chicago_crime.case_number
    fill_in "Community area", with: @chicago_crime.community_area
    fill_in "Date", with: @chicago_crime.date
    fill_in "Description", with: @chicago_crime.description
    fill_in "District", with: @chicago_crime.district
    check "Domestic" if @chicago_crime.domestic
    fill_in "Fbi code", with: @chicago_crime.fbi_code
    fill_in "Iucr", with: @chicago_crime.iucr
    fill_in "Latitude", with: @chicago_crime.latitude
    fill_in "Location", with: @chicago_crime.location
    fill_in "Location description", with: @chicago_crime.location_description
    fill_in "Longitude", with: @chicago_crime.longitude
    fill_in "P key", with: @chicago_crime.p_key
    fill_in "Primary type", with: @chicago_crime.primary_type
    fill_in "Updated on", with: @chicago_crime.updated_on
    fill_in "Ward", with: @chicago_crime.ward
    fill_in "X coordinate", with: @chicago_crime.x_coordinate
    fill_in "Y coordinate", with: @chicago_crime.y_coordinate
    fill_in "Year", with: @chicago_crime.year
    click_on "Create Chicago crime"

    assert_text "Chicago crime was successfully created"
    click_on "Back"
  end

  test "updating a Chicago crime" do
    visit chicago_crimes_url
    click_on "Edit", match: :first

    check "Arrest" if @chicago_crime.arrest
    fill_in "Beat", with: @chicago_crime.beat
    fill_in "Block", with: @chicago_crime.block
    fill_in "Case number", with: @chicago_crime.case_number
    fill_in "Community area", with: @chicago_crime.community_area
    fill_in "Date", with: @chicago_crime.date
    fill_in "Description", with: @chicago_crime.description
    fill_in "District", with: @chicago_crime.district
    check "Domestic" if @chicago_crime.domestic
    fill_in "Fbi code", with: @chicago_crime.fbi_code
    fill_in "Iucr", with: @chicago_crime.iucr
    fill_in "Latitude", with: @chicago_crime.latitude
    fill_in "Location", with: @chicago_crime.location
    fill_in "Location description", with: @chicago_crime.location_description
    fill_in "Longitude", with: @chicago_crime.longitude
    fill_in "P key", with: @chicago_crime.p_key
    fill_in "Primary type", with: @chicago_crime.primary_type
    fill_in "Updated on", with: @chicago_crime.updated_on
    fill_in "Ward", with: @chicago_crime.ward
    fill_in "X coordinate", with: @chicago_crime.x_coordinate
    fill_in "Y coordinate", with: @chicago_crime.y_coordinate
    fill_in "Year", with: @chicago_crime.year
    click_on "Update Chicago crime"

    assert_text "Chicago crime was successfully updated"
    click_on "Back"
  end

  test "destroying a Chicago crime" do
    visit chicago_crimes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Chicago crime was successfully destroyed"
  end
end
