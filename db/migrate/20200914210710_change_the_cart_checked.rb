class ChangeTheCartChecked < ActiveRecord::Migration[5.2]
  def change
    remove_column :carts, :checked_out 
    add_column :order_lists, :checked_out, :boolean, null:false, default: false
  end
end
