require "application_system_test_case"

class WorldCitiesTest < ApplicationSystemTestCase
  setup do
    @world_city = world_cities(:one)
  end

  test "visiting the index" do
    visit world_cities_url
    assert_selector "h1", text: "World Cities"
  end

  test "creating a World city" do
    visit world_cities_url
    click_on "New World City"

    fill_in "Accent city", with: @world_city.accent_city
    fill_in "City", with: @world_city.city
    fill_in "Country", with: @world_city.country
    fill_in "Latitude", with: @world_city.latitude
    fill_in "Longitude", with: @world_city.longitude
    fill_in "Population", with: @world_city.population
    fill_in "Region", with: @world_city.region
    click_on "Create World city"

    assert_text "World city was successfully created"
    click_on "Back"
  end

  test "updating a World city" do
    visit world_cities_url
    click_on "Edit", match: :first

    fill_in "Accent city", with: @world_city.accent_city
    fill_in "City", with: @world_city.city
    fill_in "Country", with: @world_city.country
    fill_in "Latitude", with: @world_city.latitude
    fill_in "Longitude", with: @world_city.longitude
    fill_in "Population", with: @world_city.population
    fill_in "Region", with: @world_city.region
    click_on "Update World city"

    assert_text "World city was successfully updated"
    click_on "Back"
  end

  test "destroying a World city" do
    visit world_cities_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "World city was successfully destroyed"
  end
end
