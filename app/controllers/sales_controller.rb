class SalesController < InheritedResources::Base
	before_action :authenticate_user!

  private

    def sale_params
      params.require(:sale).permit(:chasis_no, :bike_id, :customer_id, :payment_type_id, :sales_type, :dsicount, :received_amount, :diffrence, :delivery_location, :show_room_id, :executive_name, :financed_by, :notes)
    end
end

