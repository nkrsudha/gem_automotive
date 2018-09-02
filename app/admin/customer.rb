ActiveAdmin.register Customer do

permit_params :name,:mobile,:show_room_id,:id_type,:id_number,:city,:address,:pin

  index do
    selectable_column
    column :name
    column :mobile
    column :show_room   
    actions
  end

  filter :name

end
