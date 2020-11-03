class CreateCarts < ActiveRecord::Migration[5.2]
  def change
    create_table :carts do |t|
      t.string :user_id, null:false 
      t.boolean :checked_out,  null:false, default:false 
      t.timestamps
    end
  end
end
