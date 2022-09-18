require "application_system_test_case"

class DeepWellOverviewsTest < ApplicationSystemTestCase
  setup do
    @deep_well_overview = deep_well_overviews(:one)
  end

  test "visiting the index" do
    visit deep_well_overviews_url
    assert_selector "h1", text: "Deep Well Overviews"
  end

  test "creating a Deep well overview" do
    visit deep_well_overviews_url
    click_on "New Deep Well Overview"

    fill_in "Deepwellname", with: @deep_well_overview.deepWellName
    fill_in "Dwid", with: @deep_well_overview.dwID
    click_on "Create Deep well overview"

    assert_text "Deep well overview was successfully created"
    click_on "Back"
  end

  test "updating a Deep well overview" do
    visit deep_well_overviews_url
    click_on "Edit", match: :first

    fill_in "Deepwellname", with: @deep_well_overview.deepWellName
    fill_in "Dwid", with: @deep_well_overview.dwID
    click_on "Update Deep well overview"

    assert_text "Deep well overview was successfully updated"
    click_on "Back"
  end

  test "destroying a Deep well overview" do
    visit deep_well_overviews_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Deep well overview was successfully destroyed"
  end
end
