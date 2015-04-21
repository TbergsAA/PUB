class Admin::OrdersController < ApplicationController
  
  def index
    @orders = Order.all
  end

  def show
    @order = Orders.find(params[:id])
  end
end