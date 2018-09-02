# == Schema Information
#
# Table name: bikes
#
#  id            :integer          not null, primary key
#  model         :string
#  chase_no      :string
#  price_wo_tax  :float
#  road_tax      :float
#  insurance     :float
#  registration  :float
#  ext_warranty  :float
#  accessories   :float
#  tefflon       :float
#  hypothecation :float
#  ex_price      :float
#  cgst          :float
#  sgst          :float
#  gst           :float
#  onroad_price  :float
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

require 'test_helper'

class BikeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
