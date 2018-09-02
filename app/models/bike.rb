# == Schema Information
#
# Table name: bikes
#
#  id            :integer          not null, primary key
#  model         :string
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

class Bike < ApplicationRecord
	before_save :calculate_price


	def calculate_price
		tax = Tax.first
		gst = tax.cgst + tax.sgst
		self.cgst = (self.price_wo_tax * (tax.cgst/100)).round(0)
		self.sgst = (self.price_wo_tax * (tax.sgst/100)).round(0)
		self.gst = self.cgst + self.sgst
		self.ex_price = self.price_wo_tax + self.gst
		self.onroad_price = self.ex_price + self.road_tax + self.insurance + self.registration + self.ext_warranty + self.accessories + self.tefflon + self.hypothecation
	end

end
