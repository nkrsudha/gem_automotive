class CreateCustomers < ActiveRecord::Migration[5.0]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :mobile
      t.belongs_to :show_room, foreign_key: true
      t.string :id_type
      t.string :id_number
      t.string :city
      t.text :address
      t.integer :pin

      t.timestamps
    end
  end
end
