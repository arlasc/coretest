require "application_system_test_case"

class OrdersTest < ApplicationSystemTestCase
  setup do
    @order = orders(:one)
  end

  test "visiting the index" do
    visit orders_url
    assert_selector "h1", text: "Orders"
  end

  test "should create order" do
    visit orders_url
    click_on "New order"

    fill_in "Author", with: @order.author_id
    fill_in "Mainboard", with: @order.mainboard_id
    fill_in "Memoryram", with: @order.memoryram_id
    fill_in "Name order", with: @order.name_order
    fill_in "Processor", with: @order.processor_id
    fill_in "Videoboard", with: @order.videoboard_id
    click_on "Create Order"

    assert_text "Order was successfully created"
    click_on "Back"
  end

  test "should update Order" do
    visit order_url(@order)
    click_on "Edit this order", match: :first

    fill_in "Author", with: @order.author_id
    fill_in "Mainboard", with: @order.mainboard_id
    fill_in "Memoryram", with: @order.memoryram_id
    fill_in "Name order", with: @order.name_order
    fill_in "Processor", with: @order.processor_id
    fill_in "Videoboard", with: @order.videoboard_id
    click_on "Update Order"

    assert_text "Order was successfully updated"
    click_on "Back"
  end

  test "should destroy Order" do
    visit order_url(@order)
    click_on "Destroy this order", match: :first

    assert_text "Order was successfully destroyed"
  end
end
