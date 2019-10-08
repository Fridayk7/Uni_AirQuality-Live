require 'test_helper'

class AirqualityControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get airquality_index_url
    assert_response :success
  end

end
