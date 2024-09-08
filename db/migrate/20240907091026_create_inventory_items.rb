class CreateInventoryItems < ActiveRecord::Migration[7.1]
  def change
    create_table :inventory_items do |t|
      t.string :name
      t.integer :quantity
      t.string :location

      t.timestamps
    end
  end
end
