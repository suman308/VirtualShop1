class RemoveColumn < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :cart_id, :store_id, :order_id
  end
end
