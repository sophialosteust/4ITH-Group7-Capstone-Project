require 'test_helper'

class DeepWellsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @deep_well = deep_wells(:one)
  end

  test "should get index" do
    get deep_wells_url
    assert_response :success
  end

  test "should get new" do
    get new_deep_well_url
    assert_response :success
  end

  test "should create deep_well" do
    assert_difference('DeepWell.count') do
      post deep_wells_url, params: { deep_well: { contractor: @deep_well.contractor, dateGranted: @deep_well.dateGranted, dateofUTVI: @deep_well.dateofUTVI, deepWellName: @deep_well.deepWellName, depthTotal: @deep_well.depthTotal, dwID: @deep_well.dwID, ownerName: @deep_well.ownerName, reason: @deep_well.reason, waterPermitNo: @deep_well.waterPermitNo, wellCoodinates: @deep_well.wellCoodinates, wellLocation: @deep_well.wellLocation } }
    end

    assert_redirected_to deep_well_url(DeepWell.last)
  end

  test "should show deep_well" do
    get deep_well_url(@deep_well)
    assert_response :success
  end

  test "should get edit" do
    get edit_deep_well_url(@deep_well)
    assert_response :success
  end

  test "should update deep_well" do
    patch deep_well_url(@deep_well), params: { deep_well: { contractor: @deep_well.contractor, dateGranted: @deep_well.dateGranted, dateofUTVI: @deep_well.dateofUTVI, deepWellName: @deep_well.deepWellName, depthTotal: @deep_well.depthTotal, dwID: @deep_well.dwID, ownerName: @deep_well.ownerName, reason: @deep_well.reason, waterPermitNo: @deep_well.waterPermitNo, wellCoodinates: @deep_well.wellCoodinates, wellLocation: @deep_well.wellLocation } }
    assert_redirected_to deep_well_url(@deep_well)
  end

  test "should destroy deep_well" do
    assert_difference('DeepWell.count', -1) do
      delete deep_well_url(@deep_well)
    end

    assert_redirected_to deep_wells_url
  end
end
