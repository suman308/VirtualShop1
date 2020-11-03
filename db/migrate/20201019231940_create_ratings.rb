class CreateRatings < ActiveRecord::Migration[5.2]
  def change
    create_table :ratings do |t|
      t.string :user_id, null:false 
      t.string :product_id, null:false 
      t.float :rating , null:false 
      t.timestamps
    end
  end
end
