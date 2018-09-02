ActiveAdmin.register Tax do
   menu parent: 'Settings', label: 'Tax'
   permit_params :cgst,:sgst

  index do
    selectable_column
    column :cgst
    column :sgst   
    actions
  end

  filter :cgst
  
end
