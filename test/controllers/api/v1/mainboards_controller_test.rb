require "test_helper"

class Api::V1::MainboardsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get api_v1_mainboards_index_url
    assert_response :success
  end

  test "should get create" do
    get api_v1_mainboards_create_url
    assert_response :success
  end

  test "should get show" do
    get api_v1_mainboards_show_url
    assert_response :success
  end
end
