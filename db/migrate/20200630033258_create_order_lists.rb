class CreateOrderLists < ActiveRecord::Migration[5.2]
  def change
    create_table :order_lists do |t|
      t.string :user_id, null:false 
      t.string :product_id
      t.timestamps
    end
  end
end
