require "test_helper"

class MemoryramsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @memoryram = memoryrams(:one)
  end

  test "should get index" do
    get memoryrams_url
    assert_response :success
  end

  test "should get new" do
    get new_memoryram_url
    assert_response :success
  end

  test "should create memoryram" do
    assert_difference("Memoryram.count") do
      post memoryrams_url, params: { memoryram: { memory_size: @memoryram.memory_size, product_name: @memoryram.product_name } }
    end

    assert_redirected_to memoryram_url(Memoryram.last)
  end

  test "should show memoryram" do
    get memoryram_url(@memoryram)
    assert_response :success
  end

  test "should get edit" do
    get edit_memoryram_url(@memoryram)
    assert_response :success
  end

  test "should update memoryram" do
    patch memoryram_url(@memoryram), params: { memoryram: { memory_size: @memoryram.memory_size, product_name: @memoryram.product_name } }
    assert_redirected_to memoryram_url(@memoryram)
  end

  test "should destroy memoryram" do
    assert_difference("Memoryram.count", -1) do
      delete memoryram_url(@memoryram)
    end

    assert_redirected_to memoryrams_url
  end
end
