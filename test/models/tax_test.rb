# == Schema Information
#
# Table name: taxes
#
#  id         :integer          not null, primary key
#  cgst       :float
#  sgst       :float
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class TaxTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
