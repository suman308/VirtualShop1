class Comment < ApplicationRecord
    validates :user_id, presence:true
    validates :product_id, presence:true 
    validates :body, presence:true

    belongs_to :user, foreign_key: :user_id, class_name: :User
    belongs_to :product, foreign_key: :product_id, class_name: :Product
end 