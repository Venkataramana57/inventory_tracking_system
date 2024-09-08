require "test_helper"

class InventoryItemsControllerTest < ActionDispatch::IntegrationTest
  test "should get update" do
    get inventory_items_update_url
    assert_response :success
  end
end
