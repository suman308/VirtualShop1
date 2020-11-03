class CreateStores < ActiveRecord::Migration[5.2]
  def change
    create_table :stores do |t|
      t.string :name, null:false 
      t.string :owner_id, null:false 
      t.timestamps
    end
    add_index :stores, :name
  end
end
