class CreateSales < ActiveRecord::Migration[5.0]
  def change
    create_table :sales do |t|
      t.string :chasis_no
      t.belongs_to :bike, foreign_key: true
      t.belongs_to :customer, foreign_key: true
      t.belongs_to :payment_type, foreign_key: true
      t.integer :sales_type
      t.float :dsicount
      t.float :received_amount
      t.string :diffrence
      t.string :delivery_location
      t.belongs_to :show_room, foreign_key: true
      t.belongs_to :user, foreign_key: true
      t.string :executive_name
      t.string :financed_by
      t.string :notes

      t.timestamps
    end
  end
end
