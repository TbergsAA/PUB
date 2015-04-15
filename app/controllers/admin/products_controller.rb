class Admin::ProductsController < ApplicationController

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to admin_category_path(@product.category)
    else
      render :new
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update_attributes(product_params)
      redirect_to action: "index"
    else
      render :new
    end
  end

  def destroy
    @product = Product.find(params[:id])
    if @product.destroy
      redirect_to action: "index"
    end
  end

  private

  def product_params
    params.require(:product).permit(:name, :price, :category_id)
  end
end
