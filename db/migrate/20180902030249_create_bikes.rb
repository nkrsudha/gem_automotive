class CreateBikes < ActiveRecord::Migration[5.0]
  def change
    create_table :bikes do |t|
      t.string :model
      t.float :price_wo_tax
      t.float :road_tax
      t.float :insurance
      t.float :registration
      t.float :ext_warranty
      t.float :accessories
      t.float :tefflon
      t.float :hypothecation
      t.float :ex_price
      t.float :cgst
      t.float :sgst
      t.float :gst
      t.float :onroad_price
      

      t.timestamps
    end
  end
end
