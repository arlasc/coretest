require "test_helper"

class VideoboardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @videoboard = videoboards(:one)
  end

  test "should get index" do
    get videoboards_url
    assert_response :success
  end

  test "should get new" do
    get new_videoboard_url
    assert_response :success
  end

  test "should create videoboard" do
    assert_difference("Videoboard.count") do
      post videoboards_url, params: { videoboard: { product_name: @videoboard.product_name } }
    end

    assert_redirected_to videoboard_url(Videoboard.last)
  end

  test "should show videoboard" do
    get videoboard_url(@videoboard)
    assert_response :success
  end

  test "should get edit" do
    get edit_videoboard_url(@videoboard)
    assert_response :success
  end

  test "should update videoboard" do
    patch videoboard_url(@videoboard), params: { videoboard: { product_name: @videoboard.product_name } }
    assert_redirected_to videoboard_url(@videoboard)
  end

  test "should destroy videoboard" do
    assert_difference("Videoboard.count", -1) do
      delete videoboard_url(@videoboard)
    end

    assert_redirected_to videoboards_url
  end
end
