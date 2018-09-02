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

class Sale < ApplicationRecord
  belongs_to :bike
  belongs_to :customer
  belongs_to :payment_type
  belongs_to :show_room
  belongs_to :user
end
