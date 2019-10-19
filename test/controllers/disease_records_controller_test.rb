require 'test_helper'

class DiseaseRecordsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @disease_record = disease_records(:one)
  end

  test "should get index" do
    get disease_records_url
    assert_response :success
  end

  test "should get new" do
    get new_disease_record_url
    assert_response :success
  end

  test "should create disease_record" do
    assert_difference('DiseaseRecord.count') do
      post disease_records_url, params: { disease_record: { asthma: @disease_record.asthma, bronch: @disease_record.bronch, copd: @disease_record.copd, lc: @disease_record.lc, region_id: @disease_record.region_id, year: @disease_record.year } }
    end

    assert_redirected_to disease_record_url(DiseaseRecord.last)
  end

  test "should show disease_record" do
    get disease_record_url(@disease_record)
    assert_response :success
  end

  test "should get edit" do
    get edit_disease_record_url(@disease_record)
    assert_response :success
  end

  test "should update disease_record" do
    patch disease_record_url(@disease_record), params: { disease_record: { asthma: @disease_record.asthma, bronch: @disease_record.bronch, copd: @disease_record.copd, lc: @disease_record.lc, region_id: @disease_record.region_id, year: @disease_record.year } }
    assert_redirected_to disease_record_url(@disease_record)
  end

  test "should destroy disease_record" do
    assert_difference('DiseaseRecord.count', -1) do
      delete disease_record_url(@disease_record)
    end

    assert_redirected_to disease_records_url
  end
end
