class Order < ActiveRecord::Base
  has_many :order_products, class: ::OrderProducts
  accepts_nested_attributes_for :order_products
end
