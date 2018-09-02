ActiveAdmin.register User do

  permit_params :email,:role,:mobile,:name,:active, :password, :password_confirmation,:show_room_id

  #actions :all, except: [:new, :create,:edit]
  menu priority: 2 

  index do
    selectable_column
    id_column
    column :name
    column :email
    column :current_sign_in_at
    column :sign_in_count    
    actions
  end

  filter :email
  filter :name
  
  form do |f|
    f.inputs "User Details" do
      f.input :email
      f.input :name
      f.input :mobile
      f.input :role, :as => :select , :collection => [["Manager",2],["Employee",3]], :prompt => "-Select  Role-"
      f.input :show_room
      f.input :active
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end
end
