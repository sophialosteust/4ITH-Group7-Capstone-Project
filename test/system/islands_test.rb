require "application_system_test_case"

class IslandsTest < ApplicationSystemTestCase
  setup do
    @island = islands(:one)
  end

  test "visiting the index" do
    visit islands_url
    assert_selector "h1", text: "Islands"
  end

  test "creating a Island" do
    visit islands_url
    click_on "New Island"

    fill_in "Iid", with: @island.IID
    fill_in "Islandname", with: @island.islandName
    fill_in "Numplants", with: @island.numPlants
    click_on "Create Island"

    assert_text "Island was successfully created"
    click_on "Back"
  end

  test "updating a Island" do
    visit islands_url
    click_on "Edit", match: :first

    fill_in "Iid", with: @island.IID
    fill_in "Islandname", with: @island.islandName
    fill_in "Numplants", with: @island.numPlants
    click_on "Update Island"

    assert_text "Island was successfully updated"
    click_on "Back"
  end

  test "destroying a Island" do
    visit islands_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Island was successfully destroyed"
  end
end
