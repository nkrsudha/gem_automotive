class CreateTaxes < ActiveRecord::Migration[5.0]
  def change
    create_table :taxes do |t|
      t.float :cgst
      t.float :sgst

      t.timestamps
    end
  end
end
