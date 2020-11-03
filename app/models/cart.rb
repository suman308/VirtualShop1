# == Schema Information
#
# Table name: carts
#
#  id          :bigint           not null, primary key
#  user_id     :string           not null
#  checked_out :boolean          default(FALSE), not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  product_id  :string
#
class Cart < ApplicationRecord
    validates :user_id, presence:true 
    
    belongs_to :user, foreign_key: :user_id,  class_name: :User
    belongs_to :product, optional: true, foreign_key: :product_id, class_name: :Product
    has_many :order_lists, foreign_key: :product_id, class_name: :OrderList
end
