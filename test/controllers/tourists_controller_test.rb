require "test_helper"

class TouristsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get tourists_show_url
    assert_response :success
  end

  test "should get query" do
    get tourists_query_url
    assert_response :success
  end
end
