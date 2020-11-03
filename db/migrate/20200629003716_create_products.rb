class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name, null:false, unique:true 
      t.text :details, null:false
      t.float :price, null:false 
      t.string :image_url 
      t.string :category, null:false, inclusion:{in:['Art', 'Electronics', 'Books', 'Food', 'Cloths', 'Shoes','Beverage','Jewelry','Others' ]}
      t.float :ratings 
      t.string :store_id, null:false, unique:true 
      t.timestamps
    end
  end
end
