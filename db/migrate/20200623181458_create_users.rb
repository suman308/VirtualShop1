class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username, null:false, unique:true 
      t.string :session_token, null:false, unique:true 
      t.string :password_digest, null:false  
      t.string :email, null:false, unique:true 
      t.string :mailing_address 
      t.string :phone_number 
      t.string :cart_id, unique:true 
      t.string :order_id, unique:true 
      t.string :store_id, unique:true 
      t.timestamps
    end
    add_index :users, :username
    add_index :users, :password_digest
    add_index :users, :session_token
    add_index :users, :email
    
  end
end
