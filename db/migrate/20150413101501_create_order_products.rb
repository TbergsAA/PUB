class CreateOrderProducts < ActiveRecord::Migration
  def change
    create_table :order_products do |t|
      t.belongs_to :product
      t.belongs_to :order
      t.timestamps null: false
    end
  end
end

