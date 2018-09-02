# == Schema Information
#
# Table name: show_rooms
#
#  id         :integer          not null, primary key
#  name       :string
#  address    :string
#  city       :string
#  contact    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class ShowRoom < ApplicationRecord
	has_many :sales
	has_many :users

	 phony_normalize :contact, default_country_code: 'IN'
end
