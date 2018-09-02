class CreateShowRooms < ActiveRecord::Migration[5.0]
  def change
    create_table :show_rooms do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :contact

      t.timestamps
    end
  end
end
