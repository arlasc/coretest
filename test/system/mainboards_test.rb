require "application_system_test_case"

class MainboardsTest < ApplicationSystemTestCase
  setup do
    @mainboard = mainboards(:one)
  end

  test "visiting the index" do
    visit mainboards_url
    assert_selector "h1", text: "Mainboards"
  end

  test "should create mainboard" do
    visit mainboards_url
    click_on "New mainboard"

    fill_in "Max memory ram", with: @mainboard.max_memory_ram
    fill_in "Processors suported", with: @mainboard.processors_suported
    fill_in "Product name", with: @mainboard.product_name
    fill_in "Qtd slots ram", with: @mainboard.qtd_slots_ram
    check "Video board" if @mainboard.video_board
    click_on "Create Mainboard"

    assert_text "Mainboard was successfully created"
    click_on "Back"
  end

  test "should update Mainboard" do
    visit mainboard_url(@mainboard)
    click_on "Edit this mainboard", match: :first

    fill_in "Max memory ram", with: @mainboard.max_memory_ram
    fill_in "Processors suported", with: @mainboard.processors_suported
    fill_in "Product name", with: @mainboard.product_name
    fill_in "Qtd slots ram", with: @mainboard.qtd_slots_ram
    check "Video board" if @mainboard.video_board
    click_on "Update Mainboard"

    assert_text "Mainboard was successfully updated"
    click_on "Back"
  end

  test "should destroy Mainboard" do
    visit mainboard_url(@mainboard)
    click_on "Destroy this mainboard", match: :first

    assert_text "Mainboard was successfully destroyed"
  end
end
