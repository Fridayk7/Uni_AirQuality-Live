require "application_system_test_case"

class RegionAverageregionsTest < ApplicationSystemTestCase
  setup do
    @region_averageregion = region_averageregions(:one)
  end

  test "visiting the index" do
    visit region_averageregions_url
    assert_selector "h1", text: "Region Averageregions"
  end

  test "creating a Region averageregion" do
    visit region_averageregions_url
    click_on "New Region Averageregion"

    fill_in "Average", with: @region_averageregion.average
    click_on "Create Region averageregion"

    assert_text "Region averageregion was successfully created"
    click_on "Back"
  end

  test "updating a Region averageregion" do
    visit region_averageregions_url
    click_on "Edit", match: :first

    fill_in "Average", with: @region_averageregion.average
    click_on "Update Region averageregion"

    assert_text "Region averageregion was successfully updated"
    click_on "Back"
  end

  test "destroying a Region averageregion" do
    visit region_averageregions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Region averageregion was successfully destroyed"
  end
end
