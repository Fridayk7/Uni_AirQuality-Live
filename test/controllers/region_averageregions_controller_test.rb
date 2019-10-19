require 'test_helper'

class RegionAverageregionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @region_averageregion = region_averageregions(:one)
  end

  test "should get index" do
    get region_averageregions_url
    assert_response :success
  end

  test "should get new" do
    get new_region_averageregion_url
    assert_response :success
  end

  test "should create region_averageregion" do
    assert_difference('RegionAverageregion.count') do
      post region_averageregions_url, params: { region_averageregion: { average: @region_averageregion.average } }
    end

    assert_redirected_to region_averageregion_url(RegionAverageregion.last)
  end

  test "should show region_averageregion" do
    get region_averageregion_url(@region_averageregion)
    assert_response :success
  end

  test "should get edit" do
    get edit_region_averageregion_url(@region_averageregion)
    assert_response :success
  end

  test "should update region_averageregion" do
    patch region_averageregion_url(@region_averageregion), params: { region_averageregion: { average: @region_averageregion.average } }
    assert_redirected_to region_averageregion_url(@region_averageregion)
  end

  test "should destroy region_averageregion" do
    assert_difference('RegionAverageregion.count', -1) do
      delete region_averageregion_url(@region_averageregion)
    end

    assert_redirected_to region_averageregions_url
  end
end
