class OrderProducts < ActiveRecord::Base
  has_and_belongs_to_many :order
  has_and_belongs_to_many :product
end
