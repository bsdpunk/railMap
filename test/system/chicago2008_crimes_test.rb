require "application_system_test_case"

class Chicago2008CrimesTest < ApplicationSystemTestCase
  setup do
    @chicago2008_crime = chicago2008_crimes(:one)
  end

  test "visiting the index" do
    visit chicago2008_crimes_url
    assert_selector "h1", text: "Chicago2008 Crimes"
  end

  test "creating a Chicago2008 crime" do
    visit chicago2008_crimes_url
    click_on "New Chicago2008 Crime"

    check "Arrest" if @chicago2008_crime.arrest
    fill_in "Beat", with: @chicago2008_crime.beat
    fill_in "Block", with: @chicago2008_crime.block
    fill_in "Case number", with: @chicago2008_crime.case_number
    fill_in "Community area", with: @chicago2008_crime.community_area
    fill_in "Date", with: @chicago2008_crime.date
    fill_in "Description", with: @chicago2008_crime.description
    fill_in "District", with: @chicago2008_crime.district
    check "Domestic" if @chicago2008_crime.domestic
    fill_in "Fbi code", with: @chicago2008_crime.fbi_code
    fill_in "Iucr", with: @chicago2008_crime.iucr
    fill_in "Latitude", with: @chicago2008_crime.latitude
    fill_in "Location", with: @chicago2008_crime.location
    fill_in "Location description", with: @chicago2008_crime.location_description
    fill_in "Longitude", with: @chicago2008_crime.longitude
    fill_in "P key", with: @chicago2008_crime.p_key
    fill_in "Primary type", with: @chicago2008_crime.primary_type
    fill_in "Updated on", with: @chicago2008_crime.updated_on
    fill_in "Ward", with: @chicago2008_crime.ward
    fill_in "X coordinate", with: @chicago2008_crime.x_coordinate
    fill_in "Y coordinate", with: @chicago2008_crime.y_coordinate
    fill_in "Year", with: @chicago2008_crime.year
    click_on "Create Chicago2008 crime"

    assert_text "Chicago2008 crime was successfully created"
    click_on "Back"
  end

  test "updating a Chicago2008 crime" do
    visit chicago2008_crimes_url
    click_on "Edit", match: :first

    check "Arrest" if @chicago2008_crime.arrest
    fill_in "Beat", with: @chicago2008_crime.beat
    fill_in "Block", with: @chicago2008_crime.block
    fill_in "Case number", with: @chicago2008_crime.case_number
    fill_in "Community area", with: @chicago2008_crime.community_area
    fill_in "Date", with: @chicago2008_crime.date
    fill_in "Description", with: @chicago2008_crime.description
    fill_in "District", with: @chicago2008_crime.district
    check "Domestic" if @chicago2008_crime.domestic
    fill_in "Fbi code", with: @chicago2008_crime.fbi_code
    fill_in "Iucr", with: @chicago2008_crime.iucr
    fill_in "Latitude", with: @chicago2008_crime.latitude
    fill_in "Location", with: @chicago2008_crime.location
    fill_in "Location description", with: @chicago2008_crime.location_description
    fill_in "Longitude", with: @chicago2008_crime.longitude
    fill_in "P key", with: @chicago2008_crime.p_key
    fill_in "Primary type", with: @chicago2008_crime.primary_type
    fill_in "Updated on", with: @chicago2008_crime.updated_on
    fill_in "Ward", with: @chicago2008_crime.ward
    fill_in "X coordinate", with: @chicago2008_crime.x_coordinate
    fill_in "Y coordinate", with: @chicago2008_crime.y_coordinate
    fill_in "Year", with: @chicago2008_crime.year
    click_on "Update Chicago2008 crime"

    assert_text "Chicago2008 crime was successfully updated"
    click_on "Back"
  end

  test "destroying a Chicago2008 crime" do
    visit chicago2008_crimes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Chicago2008 crime was successfully destroyed"
  end
end
