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
require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
