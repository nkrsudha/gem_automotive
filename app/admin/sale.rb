ActiveAdmin.register Sale do
permit_params :bike_id,:customer_id,:payment_type_id,:sales_type,:discount,:received_amount,:diffrence,:delivery_location,:show_room_id,:executive_name,:financed_by,:notes,:user_id

  index do
    selectable_column
    column :chasis_no
    column :created_at
    column :show_room
    actions
  end

  filter :chasis_no
  filter :created_at
  filter :show_room

  actions :all, except: [:new, :delete]

  csv do
    column :chasis_no
    column(:model) { |sale| sale.bike.model }
  end
  
  config.xls_builder.only_columns :chasis_no
  config.xls_builder.column('chasis_no') do |resource|
    resource.chasis_no
  end

end
