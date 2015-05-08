class Admin::OrdersController < ApplicationController
  
  def index
    if params["get"] == "finished"
      @orders = Order.where(completed: true)
    else
      @orders = Order.where(completed: false)
    end
  end

  def show
    @order = Orders.find(params[:id])
  end

  def update
    order = Order.find(params[:id])
    if order && params[:set_to] == "finished"
      order.update_attribute(:completed, true)
      redirect_to admin_orders_path
    end
  end

end