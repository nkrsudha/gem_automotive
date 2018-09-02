ActiveAdmin.register PaymentType do
 menu parent: 'Settings', label: 'PaymentType'

 permit_params :name,:note

  index do
    selectable_column
    column :name
    actions
  end

  filter :name

end
