require "test_helper"

class BeerItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @beer_item = beer_items(:one)
  end

  test "should get index" do
    get beer_items_url
    assert_response :success
  end

  test "should get new" do
    get new_beer_item_url
    assert_response :success
  end

  test "should create beer_item" do
    assert_difference("BeerItem.count") do
      post beer_items_url, params: { beer_item: { beer_name: @beer_item.beer_name, brewery: @beer_item.brewery, description: @beer_item.description, ibu: @beer_item.ibu } }
    end

    assert_redirected_to beer_item_url(BeerItem.last)
  end

  test "should show beer_item" do
    get beer_item_url(@beer_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_beer_item_url(@beer_item)
    assert_response :success
  end

  test "should update beer_item" do
    patch beer_item_url(@beer_item), params: { beer_item: { beer_name: @beer_item.beer_name, brewery: @beer_item.brewery, description: @beer_item.description, ibu: @beer_item.ibu } }
    assert_redirected_to beer_item_url(@beer_item)
  end

  test "should destroy beer_item" do
    assert_difference("BeerItem.count", -1) do
      delete beer_item_url(@beer_item)
    end

    assert_redirected_to beer_items_url
  end
end
