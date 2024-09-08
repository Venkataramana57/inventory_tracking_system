class DashboardController < ApplicationController
  def index
    # Displaying all Inventory Item (SQL Query will be: Select * from inventory_items)
    @inventory_items = InventoryItem.all
  end
end
