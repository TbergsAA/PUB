class OrdersController < ApplicationController

  def new
    @categories = Category.all
    @order = Order.new
  end

  def create
   binding.pry
   redirect_to new_order_path
  end

  def save
    @order = Order.new(product_params)
    if @order.save
      redirect_to admin_category_path(@product.category)
    else
      render :new
    end
  end

end
