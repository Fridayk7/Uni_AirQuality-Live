require 'test_helper'

class AverageRegionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @average_region = average_regions(:one)
  end

  test "should get index" do
    get average_regions_url
    assert_response :success
  end

  test "should get new" do
    get new_average_region_url
    assert_response :success
  end

  test "should create average_region" do
    assert_difference('AverageRegion.count') do
      post average_regions_url, params: { average_region: { average: @average_region.average, region: @average_region.region } }
    end

    assert_redirected_to average_region_url(AverageRegion.last)
  end

  test "should show average_region" do
    get average_region_url(@average_region)
    assert_response :success
  end

  test "should get edit" do
    get edit_average_region_url(@average_region)
    assert_response :success
  end

  test "should update average_region" do
    patch average_region_url(@average_region), params: { average_region: { average: @average_region.average, region: @average_region.region } }
    assert_redirected_to average_region_url(@average_region)
  end

  test "should destroy average_region" do
    assert_difference('AverageRegion.count', -1) do
      delete average_region_url(@average_region)
    end

    assert_redirected_to average_regions_url
  end
end
