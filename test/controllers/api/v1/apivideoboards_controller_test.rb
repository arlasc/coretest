require "test_helper"

class Api::V1::ApivideoboardsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get api_v1_apivideoboards_index_url
    assert_response :success
  end

  test "should get create" do
    get api_v1_apivideoboards_create_url
    assert_response :success
  end

  test "should get show" do
    get api_v1_apivideoboards_show_url
    assert_response :success
  end
end
