require "application_system_test_case"

class VideoboardsTest < ApplicationSystemTestCase
  setup do
    @videoboard = videoboards(:one)
  end

  test "visiting the index" do
    visit videoboards_url
    assert_selector "h1", text: "Videoboards"
  end

  test "should create videoboard" do
    visit videoboards_url
    click_on "New videoboard"

    fill_in "Product name", with: @videoboard.product_name
    click_on "Create Videoboard"

    assert_text "Videoboard was successfully created"
    click_on "Back"
  end

  test "should update Videoboard" do
    visit videoboard_url(@videoboard)
    click_on "Edit this videoboard", match: :first

    fill_in "Product name", with: @videoboard.product_name
    click_on "Update Videoboard"

    assert_text "Videoboard was successfully updated"
    click_on "Back"
  end

  test "should destroy Videoboard" do
    visit videoboard_url(@videoboard)
    click_on "Destroy this videoboard", match: :first

    assert_text "Videoboard was successfully destroyed"
  end
end
