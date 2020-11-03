class ChangeTheOrderlist < ActiveRecord::Migration[5.2]
  def change
    remove_column :order_lists, :user_id
    add_column :order_lists, :cart_id, :string, null: false 
  end
end
