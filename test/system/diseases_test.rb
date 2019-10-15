require "application_system_test_case"

class DiseasesTest < ApplicationSystemTestCase
  setup do
    @disease = diseases(:one)
  end

  test "visiting the index" do
    visit diseases_url
    assert_selector "h1", text: "Diseases"
  end

  test "creating a Disease" do
    visit diseases_url
    click_on "New Disease"

    fill_in "Asthma", with: @disease.asthma
    fill_in "Bronch", with: @disease.bronch
    fill_in "Copd", with: @disease.copd
    fill_in "Lc", with: @disease.lc
    fill_in "Region", with: @disease.region
    fill_in "Year", with: @disease.year
    click_on "Create Disease"

    assert_text "Disease was successfully created"
    click_on "Back"
  end

  test "updating a Disease" do
    visit diseases_url
    click_on "Edit", match: :first

    fill_in "Asthma", with: @disease.asthma
    fill_in "Bronch", with: @disease.bronch
    fill_in "Copd", with: @disease.copd
    fill_in "Lc", with: @disease.lc
    fill_in "Region", with: @disease.region
    fill_in "Year", with: @disease.year
    click_on "Update Disease"

    assert_text "Disease was successfully updated"
    click_on "Back"
  end

  test "destroying a Disease" do
    visit diseases_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Disease was successfully destroyed"
  end
end
