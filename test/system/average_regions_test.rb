require "application_system_test_case"

class AverageRegionsTest < ApplicationSystemTestCase
  setup do
    @average_region = average_regions(:one)
  end

  test "visiting the index" do
    visit average_regions_url
    assert_selector "h1", text: "Average Regions"
  end

  test "creating a Average region" do
    visit average_regions_url
    click_on "New Average Region"

    fill_in "Average", with: @average_region.average
    fill_in "Region", with: @average_region.region
    click_on "Create Average region"

    assert_text "Average region was successfully created"
    click_on "Back"
  end

  test "updating a Average region" do
    visit average_regions_url
    click_on "Edit", match: :first

    fill_in "Average", with: @average_region.average
    fill_in "Region", with: @average_region.region
    click_on "Update Average region"

    assert_text "Average region was successfully updated"
    click_on "Back"
  end

  test "destroying a Average region" do
    visit average_regions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Average region was successfully destroyed"
  end
end
