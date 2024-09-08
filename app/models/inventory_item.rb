class InventoryItem < ApplicationRecord
	validates :name, :quantity, :location, presence: true

	after_create_commit do
    broadcast_append_to "inventory_items" # Appends the new item to the existing list
  end

	after_update_commit do
		broadcast_replace_to "inventory_items" # Replaces the existing item within the list
	end 
end
