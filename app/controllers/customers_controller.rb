class CustomersController < InheritedResources::Base
	before_action :authenticate_user!

  def index
    @customers = Customer.where(show_room_id: current_user.show_room_id)

    respond_to do |format|
      format.html 
      format.json { render json: @customers }
    end
  end

  # # GET /customers/1
  # # GET /customers/1.json
  # def show
  #   @customer = customer.find(params[:id])

  #   respond_to do |format|
  #     format.html # show.html.erb
  #     format.json { render json: @customer }
  #   end
  # end

  # # GET /customers/new
  # # GET /customers/new.json
  # def new
  #   @customer = customer.new

  #   respond_to do |format|
  #     format.html # new.html.erb
  #     format.json { render json: @customer }
  #   end
  # end

  # # GET /customers/1/edit
  # def edit
  #   @customer = customer.find(params[:id])
  # end


  def create
    @customer = Customer.new(customer_params)

    respond_to do |format|
      if @customer.save
        format.html { redirect_to customers_path, notice: 'Customer was successfully created.' }
        format.json { render json: @customer, status: :created, location: @customer }
      else
        format.html { render action: "new" }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
      end
    end
  end

  
  def update
    @customer = Customer.find(params[:id])

    respond_to do |format|
      if @customer.update_attributes(customer_params)
        format.html { redirect_to customers_path, notice: 'Customer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # # DELETE /customers/1
  # # DELETE /customers/1.json
  # def destroy
  #   @customer = customer.find(params[:id])
  #   @customer.destroy

  #   respond_to do |format|
  #     format.html { redirect_to customers_url }
  #     format.json { head :no_content }
  #   end
  # end

  private

    def customer_params
      params.require(:customer).permit(:name, :mobile, :show_room_id, :id_type, :id_number, :city, :address, :pin)
    end
end

