class SalesController < InheritedResources::Base
	before_action :authenticate_user!

	def index
		@sales = Sale.where(show_room_id: current_user.show_room_id)

		respond_to do |format|
		  format.html 
		  format.json { render json: @sales }
		end
	end

	def create
	    @sale = Sale.new(sale_params)

	    respond_to do |format|
	      if @sale.save
	        format.html { redirect_to sales_path, notice: 'sale was successfully created.' }
	        format.json { render json: @sale, status: :created, location: @sale }
	      else
	        format.html { render action: "new" }
	        format.json { render json: @sale.errors, status: :unprocessable_entity }
	      end
	    end
  	end

  
  	def update
	    @sale = Sale.find(params[:id])

	    respond_to do |format|
	      if @sale.update_attributes(sale_params)
	        format.html { redirect_to sales_path, notice: 'sale was successfully updated.' }
	        format.json { head :no_content }
	      else
	        format.html { render action: "edit" }
	        format.json { render json: @sale.errors, status: :unprocessable_entity }
	      end
	    end
  	end

    private

    def sale_params
      params.require(:sale).permit(:chasis_no, :bike_id, :user_id,:sale_id, :payment_type_id, :sales_type, :discount, :received_amount, :diffrence, :delivery_location, :show_room_id, :executive_name, :financed_by, :notes)
    end
end

