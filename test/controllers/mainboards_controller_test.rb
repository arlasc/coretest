require "test_helper"

class MainboardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mainboard = mainboards(:one)
  end

  test "should get index" do
    get mainboards_url
    assert_response :success
  end

  test "should get new" do
    get new_mainboard_url
    assert_response :success
  end

  test "should create mainboard" do
    assert_difference("Mainboard.count") do
      post mainboards_url, params: { mainboard: { max_memory_ram: @mainboard.max_memory_ram, processors_suported: @mainboard.processors_suported, product_name: @mainboard.product_name, qtd_slots_ram: @mainboard.qtd_slots_ram, video_board: @mainboard.video_board } }
    end

    assert_redirected_to mainboard_url(Mainboard.last)
  end

  test "should show mainboard" do
    get mainboard_url(@mainboard)
    assert_response :success
  end

  test "should get edit" do
    get edit_mainboard_url(@mainboard)
    assert_response :success
  end

  test "should update mainboard" do
    patch mainboard_url(@mainboard), params: { mainboard: { max_memory_ram: @mainboard.max_memory_ram, processors_suported: @mainboard.processors_suported, product_name: @mainboard.product_name, qtd_slots_ram: @mainboard.qtd_slots_ram, video_board: @mainboard.video_board } }
    assert_redirected_to mainboard_url(@mainboard)
  end

  test "should destroy mainboard" do
    assert_difference("Mainboard.count", -1) do
      delete mainboard_url(@mainboard)
    end

    assert_redirected_to mainboards_url
  end
end
