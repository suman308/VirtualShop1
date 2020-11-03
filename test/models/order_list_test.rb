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
require 'test_helper'

class OrderListTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
