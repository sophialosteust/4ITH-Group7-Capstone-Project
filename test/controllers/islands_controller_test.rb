require 'test_helper'

class IslandsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @island = islands(:one)
  end

  test "should get index" do
    get islands_url
    assert_response :success
  end

  test "should get new" do
    get new_island_url
    assert_response :success
  end

  test "should create island" do
    assert_difference('Island.count') do
      post islands_url, params: { island: { IID: @island.IID, islandName: @island.islandName, numPlants: @island.numPlants } }
    end

    assert_redirected_to island_url(Island.last)
  end

  test "should show island" do
    get island_url(@island)
    assert_response :success
  end

  test "should get edit" do
    get edit_island_url(@island)
    assert_response :success
  end

  test "should update island" do
    patch island_url(@island), params: { island: { IID: @island.IID, islandName: @island.islandName, numPlants: @island.numPlants } }
    assert_redirected_to island_url(@island)
  end

  test "should destroy island" do
    assert_difference('Island.count', -1) do
      delete island_url(@island)
    end

    assert_redirected_to islands_url
  end
end
