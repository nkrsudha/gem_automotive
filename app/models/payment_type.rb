# == Schema Information
#
# Table name: payment_types
#
#  id         :integer          not null, primary key
#  name       :string
#  note       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class PaymentType < ApplicationRecord
end
