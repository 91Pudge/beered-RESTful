require "application_system_test_case"

class BeerItemsTest < ApplicationSystemTestCase
  setup do
    @beer_item = beer_items(:one)
  end

  test "visiting the index" do
    visit beer_items_url
    assert_selector "h1", text: "Beer items"
  end

  test "should create beer item" do
    visit beer_items_url
    click_on "New beer item"

    fill_in "Beer name", with: @beer_item.beer_name
    fill_in "Brewery", with: @beer_item.brewery
    fill_in "Description", with: @beer_item.description
    fill_in "Ibu", with: @beer_item.ibu
    click_on "Create Beer item"

    assert_text "Beer item was successfully created"
    click_on "Back"
  end

  test "should update Beer item" do
    visit beer_item_url(@beer_item)
    click_on "Edit this beer item", match: :first

    fill_in "Beer name", with: @beer_item.beer_name
    fill_in "Brewery", with: @beer_item.brewery
    fill_in "Description", with: @beer_item.description
    fill_in "Ibu", with: @beer_item.ibu
    click_on "Update Beer item"

    assert_text "Beer item was successfully updated"
    click_on "Back"
  end

  test "should destroy Beer item" do
    visit beer_item_url(@beer_item)
    click_on "Destroy this beer item", match: :first

    assert_text "Beer item was successfully destroyed"
  end
end
