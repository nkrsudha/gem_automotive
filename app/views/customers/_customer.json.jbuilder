json.extract! customer, :id, :name, :mobile, :show_room_id, :id_type, :id_number, :city, :address, :pin, :created_at, :updated_at
json.url customer_url(customer, format: :json)