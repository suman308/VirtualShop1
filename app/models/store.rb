# == Schema Information
#
# Table name: stores
#
#  id         :bigint           not null, primary key
#  name       :string           not null
#  owner_id   :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Store < ApplicationRecord
    validates :name, presence:true 
    validates :owner_id, presence:true 
    belongs_to :user, foreign_key: :owner_id, class_name: :User
    has_many :products, foreign_key: :store_id, class_name: :Product
end
