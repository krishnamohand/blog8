class CustomersController < ApplicationController
def new
 end
 
 def create
 @customer= Customer.new(params.require(:customer).permit(:fname,:lname,:age))
 if @customer.save
  redirect_to @customer
  else
  render 'new'
 end
 end

 def show
 @customer = Customer.find(params[:id])
 end

 def index
 @customers = Customer.all
 end

 def edit 
 	@customer = Customer.find(params[:id])
 end	

 def update
 @customer = Customer.find(params[:id])
 if @customer.update(params.require(:customer).permit(:fname,:lname,:age))
  redirect_to customer_path
else
	render 'update'
 end
 end

 def destroy
 @customer = Customer.find(params[:id])
 if @customer.destroy
 
   redirect_to customers_path
  end
  end 
end
