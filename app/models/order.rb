class Order < ActiveRecord::Base
  has_many :order_products, class: ::OrderProducts
  has_many :products, through: :order_products
  accepts_nested_attributes_for :order_products

  def total_price
    self.products.sum(:price)
  end
end
