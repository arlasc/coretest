require "test_helper"

class Api::V1::ApiordersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get api_v1_apiorders_index_url
    assert_response :success
  end

  test "should get create" do
    get api_v1_apiorders_create_url
    assert_response :success
  end

  test "should get show" do
    get api_v1_apiorders_show_url
    assert_response :success
  end
end
