# == Schema Information
#
# Table name: order_lists
#
#  id         :bigint           not null, primary key
#  user_id    :string           not null
#  product_id :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class OrderList < ApplicationRecord
    validates :cart_id, presence: true 
    validates :checked_out, inclusion:{in:[false, true]}
    belongs_to :cart, foreign_key: :cart_id, class_name: :Cart
    belongs_to :product, foreign_key: :product_id, optional: true, class_name: :OrderList
end
