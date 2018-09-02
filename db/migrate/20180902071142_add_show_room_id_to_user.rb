class AddShowRoomIdToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :show_room_id, :number
  end
end
