class AddQuantity < ActiveRecord::Migration[5.2]
  def change
    add_column :order_lists, :quantity, :integer, null: false 
  end
end
