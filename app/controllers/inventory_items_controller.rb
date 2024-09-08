class InventoryItemsController < ApplicationController
  def new
    # Initializing new Inventory Item. 
    @inventory_item = InventoryItem.new
  end
  
  def create
    # SQL Query: INSERT INTO "inventory_items" ("name", "quantity", "location") VALUES (?, ?, ?) RETURNING "id"  [["name", "Hello"], ["quantity", 3], ["location", "Lire"]]
   
    @inventory_item = InventoryItem.new(inventory_item_params)
    if @inventory_item.save
      respond_to do |format|
        format.turbo_stream #This will make sure to append new item every time it's created in real time.
        format.html { redirect_to root_path }
      end
    else
      respond_to do |format|
        # Below will render the errors if any
        format.turbo_stream do
          render turbo_stream: turbo_stream.replace("inventory_item_errors_new", partial: "inventory_items/error_messages", locals: { inventory_item: @inventory_item })
        end
        format.html { render :new }
      end
    end
  end

  def update
    # SQL Query: UPDATE "inventory_items" SET "quantity" = ? WHERE "inventory_items"."id" = ?  [["quantity", 100], ["id", 1]]
    
    @inventory_item = InventoryItem.find(params[:id])
    if @inventory_item.update(inventory_item_params)
      #This will make sure to update item(with quantity in our case) in real time
      respond_to do |format|
        format.turbo_stream { render turbo_stream: turbo_stream.replace(@inventory_item) }
      end
    else
      respond_to do |format|
        # Below will render the errors if any
        format.turbo_stream do
          render turbo_stream: turbo_stream.replace("inventory_item_errors_#{@inventory_item.id}", partial: "inventory_items/error_messages", locals: { inventory_item: @inventory_item })
        end
      end
    end
  end

  private

  def inventory_item_params
    # These are called strong parameters so malicious assignment with unncessary attributes can't happen here. More protected.
    params.require(:inventory_item).permit(:name, :quantity, :location)
  end
end
