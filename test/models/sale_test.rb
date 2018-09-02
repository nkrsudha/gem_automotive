# == Schema Information
#
# Table name: sales
#
#  id                :integer          not null, primary key
#  chasis_no         :string
#  bike_id           :integer
#  customer_id       :integer
#  payment_type_id   :integer
#  sales_type        :integer
#  dsicount          :float
#  received_amount   :float
#  diffrence         :string
#  delivery_location :string
#  show_room_id      :integer
#  executive_name    :string
#  financed_by       :string
#  notes             :string
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

require 'test_helper'

class SaleTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
