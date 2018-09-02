ActiveAdmin.register ShowRoom do
menu parent: 'Settings', label: 'ShowRoom'

permit_params :name,:address,:city,:contact

  index do
    selectable_column
    column :name
    column :city   
    actions
  end

  filter :name
  filter :city

end
