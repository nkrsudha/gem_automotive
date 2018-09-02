ActiveAdmin.register Tax do
   permit_params :cgst,:sgst

  index do
    selectable_column
    column :cgst
    column :sgst   
    actions
  end

  filter :cgst
  
end
