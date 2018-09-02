ActiveAdmin.register Bike do
  permit_params :model,:price_wo_tax,:road_tax,:insurance,:registration,:ext_warranty,:accessories,:tefflon,:hypothecation,:ex_price,:cgst,:sgst,:onroad_price

  index do
    selectable_column
    id_column
    column :model
    column :ex_price
    column :onroad_price    
    actions
  end

  filter :model
  filter :ex_price
  filter :onroad_price
  filter :created_at

  
  form do |f|
    f.inputs "Bike Details" do
      f.input :model
      f.input :price_wo_tax
      f.input :road_tax
      f.input :insurance
      f.input :registration
      f.input :ext_warranty
      f.input :accessories
      f.input :tefflon
      f.input :hypothecation
    end
    f.actions
  end

end
