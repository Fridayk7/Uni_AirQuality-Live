require 'test_helper'

class HistoricalControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get historical_index_url
    assert_response :success
  end

end
