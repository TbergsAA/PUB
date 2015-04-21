class OrdersController < ApplicationController

  def new
    @categories = Category.all
    @order = Order.new
  end

  def create
    if ordered_products.present?
      order = Order.create
      ordered_products.each do |id|
        order.order_products.create(product_id: id)
      end
    end
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

  def ordered_products
    ids = []
    params[:order][:products].each do |id|
      ids << id.first if id.last == "1"  
    end
    ids
  end

end
