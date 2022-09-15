require "application_system_test_case"

class DeepWellsTest < ApplicationSystemTestCase
  setup do
    @deep_well = deep_wells(:one)
  end

  test "visiting the index" do
    visit deep_wells_url
    assert_selector "h1", text: "Deep Wells"
  end

  test "creating a Deep well" do
    visit deep_wells_url
    click_on "New Deep Well"

    fill_in "Contractor", with: @deep_well.contractor
    fill_in "Dategranted", with: @deep_well.dateGranted
    fill_in "Dateofutvi", with: @deep_well.dateofUTVI
    fill_in "Deepwellname", with: @deep_well.deepWellName
    fill_in "Depthtotal", with: @deep_well.depthTotal
    fill_in "Dwid", with: @deep_well.dwID
    fill_in "Ownername", with: @deep_well.ownerName
    fill_in "Reason", with: @deep_well.reason
    fill_in "Waterpermitno", with: @deep_well.waterPermitNo
    fill_in "Wellcoodinates", with: @deep_well.wellCoodinates
    fill_in "Welllocation", with: @deep_well.wellLocation
    click_on "Create Deep well"

    assert_text "Deep well was successfully created"
    click_on "Back"
  end

  test "updating a Deep well" do
    visit deep_wells_url
    click_on "Edit", match: :first

    fill_in "Contractor", with: @deep_well.contractor
    fill_in "Dategranted", with: @deep_well.dateGranted
    fill_in "Dateofutvi", with: @deep_well.dateofUTVI
    fill_in "Deepwellname", with: @deep_well.deepWellName
    fill_in "Depthtotal", with: @deep_well.depthTotal
    fill_in "Dwid", with: @deep_well.dwID
    fill_in "Ownername", with: @deep_well.ownerName
    fill_in "Reason", with: @deep_well.reason
    fill_in "Waterpermitno", with: @deep_well.waterPermitNo
    fill_in "Wellcoodinates", with: @deep_well.wellCoodinates
    fill_in "Welllocation", with: @deep_well.wellLocation
    click_on "Update Deep well"

    assert_text "Deep well was successfully updated"
    click_on "Back"
  end

  test "destroying a Deep well" do
    visit deep_wells_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Deep well was successfully destroyed"
  end
end
