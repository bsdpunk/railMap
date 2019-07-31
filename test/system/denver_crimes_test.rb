require "application_system_test_case"

class DenverCrimesTest < ApplicationSystemTestCase
  setup do
    @denver_crime = denver_crimes(:one)
  end

  test "visiting the index" do
    visit denver_crimes_url
    assert_selector "h1", text: "Denver Crimes"
  end

  test "creating a Denver crime" do
    visit denver_crimes_url
    click_on "New Denver Crime"

    fill_in "District", with: @denver_crime.district_id
    fill_in "Firstoccurrencedate", with: @denver_crime.firstoccurrencedate
    fill_in "Geolat", with: @denver_crime.geolat
    fill_in "Geolon", with: @denver_crime.geolon
    fill_in "Geox", with: @denver_crime.geox
    fill_in "Geoy", with: @denver_crime.geoy
    fill_in "Inc id ent", with: @denver_crime.inc_id_ent_id
    fill_in "Inc id entaddress", with: @denver_crime.inc_id_entaddress
    check "Iscrime" if @denver_crime.iscrime
    check "Istraffic" if @denver_crime.istraffic
    fill_in "Lastoccurrencedate", with: @denver_crime.lastoccurrencedate
    fill_in "Neighborhood", with: @denver_crime.neighborhood_id
    fill_in "Offense", with: @denver_crime.offense_id
    fill_in "Offensecategory", with: @denver_crime.offensecategory_id
    fill_in "Offensecode", with: @denver_crime.offensecode
    check "Offensecodeextension" if @denver_crime.offensecodeextension
    fill_in "Offensetype", with: @denver_crime.offensetype_id
    fill_in "Precinct", with: @denver_crime.precinct_id
    fill_in "Reporteddate", with: @denver_crime.reporteddate
    click_on "Create Denver crime"

    assert_text "Denver crime was successfully created"
    click_on "Back"
  end

  test "updating a Denver crime" do
    visit denver_crimes_url
    click_on "Edit", match: :first

    fill_in "District", with: @denver_crime.district_id
    fill_in "Firstoccurrencedate", with: @denver_crime.firstoccurrencedate
    fill_in "Geolat", with: @denver_crime.geolat
    fill_in "Geolon", with: @denver_crime.geolon
    fill_in "Geox", with: @denver_crime.geox
    fill_in "Geoy", with: @denver_crime.geoy
    fill_in "Inc id ent", with: @denver_crime.inc_id_ent_id
    fill_in "Inc id entaddress", with: @denver_crime.inc_id_entaddress
    check "Iscrime" if @denver_crime.iscrime
    check "Istraffic" if @denver_crime.istraffic
    fill_in "Lastoccurrencedate", with: @denver_crime.lastoccurrencedate
    fill_in "Neighborhood", with: @denver_crime.neighborhood_id
    fill_in "Offense", with: @denver_crime.offense_id
    fill_in "Offensecategory", with: @denver_crime.offensecategory_id
    fill_in "Offensecode", with: @denver_crime.offensecode
    check "Offensecodeextension" if @denver_crime.offensecodeextension
    fill_in "Offensetype", with: @denver_crime.offensetype_id
    fill_in "Precinct", with: @denver_crime.precinct_id
    fill_in "Reporteddate", with: @denver_crime.reporteddate
    click_on "Update Denver crime"

    assert_text "Denver crime was successfully updated"
    click_on "Back"
  end

  test "destroying a Denver crime" do
    visit denver_crimes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Denver crime was successfully destroyed"
  end
end
