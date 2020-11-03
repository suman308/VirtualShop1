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
require 'test_helper'

class CartTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
