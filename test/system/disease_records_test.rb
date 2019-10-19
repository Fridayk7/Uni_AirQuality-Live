require "application_system_test_case"

class DiseaseRecordsTest < ApplicationSystemTestCase
  setup do
    @disease_record = disease_records(:one)
  end

  test "visiting the index" do
    visit disease_records_url
    assert_selector "h1", text: "Disease Records"
  end

  test "creating a Disease record" do
    visit disease_records_url
    click_on "New Disease Record"

    fill_in "Asthma", with: @disease_record.asthma
    fill_in "Bronch", with: @disease_record.bronch
    fill_in "Copd", with: @disease_record.copd
    fill_in "Lc", with: @disease_record.lc
    fill_in "Region", with: @disease_record.region_id
    fill_in "Year", with: @disease_record.year
    click_on "Create Disease record"

    assert_text "Disease record was successfully created"
    click_on "Back"
  end

  test "updating a Disease record" do
    visit disease_records_url
    click_on "Edit", match: :first

    fill_in "Asthma", with: @disease_record.asthma
    fill_in "Bronch", with: @disease_record.bronch
    fill_in "Copd", with: @disease_record.copd
    fill_in "Lc", with: @disease_record.lc
    fill_in "Region", with: @disease_record.region_id
    fill_in "Year", with: @disease_record.year
    click_on "Update Disease record"

    assert_text "Disease record was successfully updated"
    click_on "Back"
  end

  test "destroying a Disease record" do
    visit disease_records_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Disease record was successfully destroyed"
  end
end
