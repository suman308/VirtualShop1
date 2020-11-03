class ChangeColumn < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :cart_id, :string
    add_column :products, :order_list_id, :string
  end
end
