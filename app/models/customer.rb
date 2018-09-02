# == Schema Information
#
# Table name: customers
#
#  id           :integer          not null, primary key
#  name         :string
#  mobile       :string
#  show_room_id :integer
#  id_type      :string
#  id_number    :string
#  city         :string
#  address      :text
#  pin          :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Customer < ApplicationRecord
  belongs_to :show_room
  phony_normalize :mobile, default_country_code: 'IN'
end
