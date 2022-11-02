require "test_helper"

class Api::V1::MemoryramsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get api_v1_memoryrams_index_url
    assert_response :success
  end

  test "should get create" do
    get api_v1_memoryrams_create_url
    assert_response :success
  end

  test "should get show" do
    get api_v1_memoryrams_show_url
    assert_response :success
  end
end
