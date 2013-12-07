class OrdersController < ApplicationController
 def new
 end


 def create
 @order= Order.new(params.require(:order).permit(:products_name,:date,:customer_id))
 if @order.save
  redirect_to @order
  else
  render 'new'
 end
 end

 def show
 @order = Order.find(params[:id])
 end

 def index
 @order = Order.all
 end

 def edit
 	@order = Order.find(params[:id])
 end	

 def update
 @order = Order.find(params[:id])
 if @order.update(params.require(:order).permit(:products_name,:date,:customer_id))
  redirect_to order_path
else
	render 'update'
 end
 end

 def destroy
 @order = Order.find(params[:id])
 if @order.destroy
 
   redirect_to orders_path
  end
  end 
end



