require 'test_helper'

class WorldCitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @world_city = world_cities(:one)
  end

  test "should get index" do
    get world_cities_url
    assert_response :success
  end

  test "should get new" do
    get new_world_city_url
    assert_response :success
  end

  test "should create world_city" do
    assert_difference('WorldCity.count') do
      post world_cities_url, params: { world_city: { accent_city: @world_city.accent_city, city: @world_city.city, country: @world_city.country, latitude: @world_city.latitude, longitude: @world_city.longitude, population: @world_city.population, region: @world_city.region } }
    end

    assert_redirected_to world_city_url(WorldCity.last)
  end

  test "should show world_city" do
    get world_city_url(@world_city)
    assert_response :success
  end

  test "should get edit" do
    get edit_world_city_url(@world_city)
    assert_response :success
  end

  test "should update world_city" do
    patch world_city_url(@world_city), params: { world_city: { accent_city: @world_city.accent_city, city: @world_city.city, country: @world_city.country, latitude: @world_city.latitude, longitude: @world_city.longitude, population: @world_city.population, region: @world_city.region } }
    assert_redirected_to world_city_url(@world_city)
  end

  test "should destroy world_city" do
    assert_difference('WorldCity.count', -1) do
      delete world_city_url(@world_city)
    end

    assert_redirected_to world_cities_url
  end
end
