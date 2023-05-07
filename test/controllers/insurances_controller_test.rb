require "test_helper"

class InsurancesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get insurances_show_url
    assert_response :success
  end

  test "should get query" do
    get insurances_query_url
    assert_response :success
  end
end
