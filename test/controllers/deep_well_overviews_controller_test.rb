require 'test_helper'

class DeepWellOverviewsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @deep_well_overview = deep_well_overviews(:one)
  end

  test "should get index" do
    get deep_well_overviews_url
    assert_response :success
  end

  test "should get new" do
    get new_deep_well_overview_url
    assert_response :success
  end

  test "should create deep_well_overview" do
    assert_difference('DeepWellOverview.count') do
      post deep_well_overviews_url, params: { deep_well_overview: { deepWellName: @deep_well_overview.deepWellName, dwID: @deep_well_overview.dwID } }
    end

    assert_redirected_to deep_well_overview_url(DeepWellOverview.last)
  end

  test "should show deep_well_overview" do
    get deep_well_overview_url(@deep_well_overview)
    assert_response :success
  end

  test "should get edit" do
    get edit_deep_well_overview_url(@deep_well_overview)
    assert_response :success
  end

  test "should update deep_well_overview" do
    patch deep_well_overview_url(@deep_well_overview), params: { deep_well_overview: { deepWellName: @deep_well_overview.deepWellName, dwID: @deep_well_overview.dwID } }
    assert_redirected_to deep_well_overview_url(@deep_well_overview)
  end

  test "should destroy deep_well_overview" do
    assert_difference('DeepWellOverview.count', -1) do
      delete deep_well_overview_url(@deep_well_overview)
    end

    assert_redirected_to deep_well_overviews_url
  end
end
