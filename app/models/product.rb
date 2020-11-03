# == Schema Information
#
# Table name: products
#
#  id            :bigint           not null, primary key
#  name          :string           not null
#  details       :text             not null
#  price         :float            not null
#  category      :string           not null
#  ratings       :float
#  store_id      :string           not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  cart_id       :string
#  order_list_id :string
#
class Product < ApplicationRecord

    
    validates :name, presence:true 
    validates :details, presence:true 
    validates :price, presence:true 
    validates :category, presence:true, inclusion:{in:['Art', 'Electronics', 'Books', 'Food', 'Cloths', 'Shoes','Beverage','Jewelry','Others' ]}
     
    
    has_many :order_lists, foreign_key: :product_id, class_name: :OrderList
    belongs_to :store, foreign_key: :store_id, class_name: :Store
    has_many_attached :images
    has_many :comments, foreign_key: :product_id, class_name: :Comment
    has_many :ratings, foreign_key: :product_id, class_name: :Rating 
    
    def self.search_name(input)
        searched = self.where("lower(name) like ?", "%"+input.downcase+"%")
        if searched != []
            searched
        else
            
            Product.all
        end
    end
    def self.search_category(input)
        
        searched = self.where("category like ?", "%" + input + "%")
        if searched != []
            searched
        else
            
            Product.all
        end
    end



end
