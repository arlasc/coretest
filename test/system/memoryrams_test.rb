require "application_system_test_case"

class MemoryramsTest < ApplicationSystemTestCase
  setup do
    @memoryram = memoryrams(:one)
  end

  test "visiting the index" do
    visit memoryrams_url
    assert_selector "h1", text: "Memoryrams"
  end

  test "should create memoryram" do
    visit memoryrams_url
    click_on "New memoryram"

    fill_in "Memory size", with: @memoryram.memory_size
    fill_in "Product name", with: @memoryram.product_name
    click_on "Create Memoryram"

    assert_text "Memoryram was successfully created"
    click_on "Back"
  end

  test "should update Memoryram" do
    visit memoryram_url(@memoryram)
    click_on "Edit this memoryram", match: :first

    fill_in "Memory size", with: @memoryram.memory_size
    fill_in "Product name", with: @memoryram.product_name
    click_on "Update Memoryram"

    assert_text "Memoryram was successfully updated"
    click_on "Back"
  end

  test "should destroy Memoryram" do
    visit memoryram_url(@memoryram)
    click_on "Destroy this memoryram", match: :first

    assert_text "Memoryram was successfully destroyed"
  end
end
