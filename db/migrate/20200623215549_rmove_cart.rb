class RmoveCart < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :store_id
    remove_column :users, :order_id

  end
end
